const express = require('express');
const app = express();
const bodyParser = require('body-parser');

app.listen(3000,()=>{
    console.log('sever runnig...');
});

// 引入路由器
const userRouter = require('./router/user.js');
const taocanRouter = require('./router/taocan');
const anliRouter = require('./router/anli');

/*引入token的模块*/
const jwt=require("./jwt.js")

// 托管到静态页面
app.use(express.static('./public'))

// 应用bodyParser中间件将流请求的数据解析为对象
app.use(bodyParser.urlencoded({
    extended : false
}));

// token
app.use((req, res, next)=>{ 
    if (req.url != '/v1/user/sigin' && req.url != '/v1/user/login' && req.url.startsWith("/v1/user")) {
      let token = req.headers.token;
      let result = jwt.verifyToken(token);
      // 如果考验通过就next，否则就返回登陆信息不正确
      if(result===undefined){
        res.send({status:410, msg:"未提供证书"})
      }else if (result.name == 'TokenExpiredError') {
        res.send({status: 410, msg: '登录超时，请重新登录'});
      } else if (result.name=="JsonWebTokenError"){
        res.send({status: 410, msg: '证书出错'})
      } else{
        req.user=result;
        // res.send('qq'+result)
        // console.log(result);
        next();
      }
    } else {
      // res.send('ww')
      
      next();
    }
  });


// 应用user路由器，添加前缀
app.use('/v1/user', userRouter);
app.use('/v1/tao', taocanRouter);
app.use('/v1/an', anliRouter);


//错误处理中间件
app.use((err, req, res, next ) => {
    console.log(err);
    res.send({code : 500, msg : '服务器端错误'})
});