const express = require('express');
const pool = require('../pool.js')
const r = express.Router();
const jwt = require('../jwt')

// 文件上传
const uuid = require('uuid')
//配置multer中间件
const multer = require('multer')
obj = multer.diskStorage({
    destination: function (req, file, cb) { //指定目录
        cb(null, 'public/img')
    },
    filename: function (req, file, cb) { // 指定文件名
        // console.log(uuid.v1())
        // console.log(uuid.v4())
        let name = file.originalname
        // name:  abcd.jpg    xxxdfdd.zip
        let ext = name.substr(name.lastIndexOf('.'))
        cb(null, uuid.v4() + ext)
    }
})
const uploadTools = multer({
    storage: obj
})

//接收请求
r.post('/upload',
    uploadTools.array('uploadFile'), (req, res) => {
        // console.log(req.files);
        let imgname = `/img/${req.files[0].filename}`
        let uid = parseInt(req.user.uid)
        if (req.files) {
            pool.query('update users set uphoto=? where uid=?', [imgname,uid], (err, result) => {
                console.log(result);
                if (err) {
                    // console.log(err.sqlState);
                    if (err.sqlState == '23000') {
                        res.send({
                            code: 403,
                            msg: '上传失败，请再试一次'
                        });
                    }
                    next(err);
                    return;
                }
                if (!result.affectedRows) {
                    res.send({
                        code: 405,
                        msg: '上传失败'
                    });
                } else {
                    res.send({
                        code: 201,
                        msg: '上传成功',
                        img: imgname
                    });

                }
            });
        }else{
            res.send({code:500,msg:'上传失败'})
        }
    })


//用户注册
r.post('/sigin', (req, res, next) => {
    var obj = req.body;
    console.log(obj);
    // if(!obj.uname){
    //     res.send({code : 401, msg : '用户名不能为空'});
    //     return;
    // } 
    if (!obj.uphone) {
        res.send({
            code: 401,
            msg: '手机号不能为空'
        });
        return;
    }
    if (!obj.upwd) {
        res.send({
            code: 402,
            msg: '密码不能为空'
        });
        return;
    }

    pool.query('insert into users set ?', [obj], (err, result) => {
        if (err) {
            // console.log(err.sqlState);
            if (err.sqlState == '23000') {
                res.send({
                    code: 403,
                    msg: '手机号已被注册'
                });
            }
            next(err);
            return;
        }
        if (!result.affectedRows) {
            res.send({
                code: 405,
                msg: '注册失败'
            });
        } else {
            res.send({
                code: 201,
                msg: '注册成功'
            });

        }
    });
});

//用户登录
r.post('/login', (req, res, next) => {
    var obj = req.body;
    // console.log(obj);

    if (!obj.uname) {
        res.send({
            code: 400,
            msg: '用户名或手机号不能为空'
        });
        return;
    }
    if (!obj.upwd) {
        res.send({
            code: 401,
            msg: '密码不能为空'
        });
        return;
    }
    pool.query('select uid,uname,upwd,uphone from users where ((uname=? and upwd=?) or (uphone=? and upwd=?))', [obj.uname, obj.upwd, obj.uname, obj.upwd], (err, result) => {
        if (err) {
            next(err);
            return;
        }
        if (result == '') {
            res.send({
                code: 402,
                msg: '用户名或密码错误'
            });
        } else {
            // console.log(result);
            res.send({
                code: 201,
                msg: '登录成功',
                token:jwt.generateToken(result[0])//返回个token对象
            });
        }
    });
});

// 修改用户名
r.post('/upuname', (req, res, next) => {
    var obj = req.body;
    console.log(obj);
    var uid = req.user.uid

    pool.query('update users set uname=? where uid=?', [obj.uname, uid], (err, result) => {
        // console.log(result.sql);
        if (err) {
            // console.log(err.sqlState);
            if (err.sqlState == '23000') {
                res.send({
                    code: 403,
                    msg: '该用户名已被使用'
                });
            }
            next(err);
            return;
        }
        // console.log(result);
        if (result.affectedRows == 1) {
            res.send({
                code: 201,
                msg: '修改成功'
            })
        } else {
            res.send({
                code: 410,
                msg: '修改失败！'
            })
        }
    });
});



// 修改密码
r.post('/uppwd', (req, res, next) => {
    var obj = req.body;
    console.log(obj);
    if (!obj.uname) {
        res.send({
            code: 400,
            msg: '用户名不能为空'
        });
        return;
    }
    if (!obj.oldpwd) {
        res.send({
            code: 401,
            msg: '旧密码不能为空'
        });
        return;
    }
    if (!obj.newpwd) {
        res.send({
            code: 402,
            msg: '新密码不能为空'
        });
        return;
    }
    if (obj.oldpwd == obj.newpwd) {
        res.send({
            code: 403,
            msg: '新密码和旧密码不能一致'
        });
        return;
    }
    pool.query('update users set upwd=? where ((uname=? and upwd=?) or (uphone=? and upwd=?))', [obj.newpwd, obj.uname, obj.oldpwd, obj.uname, obj.oldpwd], (err, result) => {
        // console.log(result.sql);
        if (err) {
            next(err);
            return;
        }
        // console.log(result);
        if (result.affectedRows == 1) {
            res.send({
                code: 201,
                msg: '修改成功'
            })
        } else {
            res.send({
                code: 410,
                msg: '修改失败！用户名或旧密码错误'
            })
        }
    });
});

// 查看用户信息
r.get('/seruser', (req, res, next) => {
    
    var uid = parseInt(req.user.uid);
    console.log(uid);
    pool.query('select uphoto,uname,sex,uemail,uphone from users where uid=?', [uid], (err, result) => {
        if (err) {
            next(err);
            return;
        }
        // console.log(result);
        result[0].uphone = result[0].uphone.slice(0,3) + '****' + result[0].uphone.slice(7,11)
        res.send(result);
    });
});

// 添加收藏
r.post('/addfocus/', (req, res, next) => {
    var obj = req.body;
    var uid = parseInt(req.user.uid);
    var wid = parseInt(obj.wid);
    pool.query('insert into focus(wid,uid) values (?,?)', [wid, uid], (err, result) => {
        if (err) {
            next(err);
            return;
        }
        // console.log(result);
        if (!result.affectedRows) {
            res.send({
                code: 410,
                msg: '收藏失败'
            });
        } else {
            res.send({
                code: 201,
                msg: '收藏成功'
            });
        }
    });
});

// 删除收藏
r.delete('/delfocus/:wid', (req, res, next) => {
    let wid = req.params.wid;
    let uid = req.user.uid;
    console.log(req.params);
    pool.query('delete from focus where wid = ? and uid =?', [wid, uid], (err, result) => {
        if (err) {
            next(err);
            return;
        }
        console.log(result);

        if (result.affectedRows == 0) {
            res.send({
                code: 410,
                msg: '取消失败'
            });
        } else {
            res.send({
                code: 200,
                msg: '取消成功'
            });
        }
    });
});
// 查看收藏
r.get('/serfocus/', (req, res, next) => {
    var uid = parseInt(req.user.uid);
    pool.query('select wdphoto,wtitle,wid from cases where wid=any(select wid from focus where focus.uid=?)', [uid], (err, result) => {
        if (err) {
            next(err);
            return;
        }
        // console.log(result);
        res.send(result);
    });
});

// 导航列表
r.get('/sernav', (req, res, next) => {
    pool.query('select * from nav', (err, result) => {
        if (err) {
            next(err);
            return;
        }
        res.send(result);
    });
});

module.exports = r;