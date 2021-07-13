const express = require('express');
const pool = require('../pool.js')
const r = express.Router();

// 查看套餐列表
r.get('/sertaocan', (req, res, next) => {
    
	pool.query('select * from combo', (err, result) => {
		if(err){
			next(err);
			return;
		}
		// console.log(result);
		res.send(result);
	});
});

// 查看套餐展示图列表
r.get('/sertcshow/:tid', (req, res, next) => {
    var tid = parseInt(req.params.tid);
	pool.query('select * from combo_show where combo_show.tid=?',[tid], (err, result) => {
		if(err){
			next(err);
			return;
		}
		// console.log(result);
		res.send(result);
	});
});

// 查看套餐详情图列表
r.get('/sertcdetail/:tid', (req, res, next) => {
    var tid = parseInt(req.params.tid);
	pool.query('select * from combo_detail where tid=?',[tid], (err, result) => {
		if(err){
			next(err);
			return;
		}
		// console.log(result);
		res.send(result);
	});
});

// 查看问题表
r.get('/serquestion', (req, res, next) => {
    
	pool.query('select * from question', (err, result) => {
		if(err){
			next(err);
			return;
		}
		// console.log(result);
		res.send(result);
	});
});

// 套餐标签查询
r.get('/sertctag/:tid', (req, res, next) => {
    var tid = parseInt(req.params.tid);
	// console.log(tid);
	pool.query('select * from tag where tid=?',[tid], (err, result) => {
		if(err){
			next(err);
			return;
		}
		// console.log(result);
		res.send(result);
	});
});



module.exports = r;