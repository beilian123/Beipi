"use strict";

var express = require('express');

var pool = require('../pool.js');

var r = express.Router(); // 查看套餐列表

r.get('/sertaocan', function (req, res, next) {
  pool.query('select * from combo', function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
}); // 查看套餐展示图列表

r.get('/sertcshow/:tid', function (req, res, next) {
  var tid = parseInt(req.params.tid);
  pool.query('select * from combo_show where tid=?', [tid], function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
}); // 查看套餐详情图列表

r.get('/sertcdetail/:tid', function (req, res, next) {
  var tid = parseInt(req.params.tid);
  pool.query('select * from combo_detail where tid=?', [tid], function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
});
module.exports = r;