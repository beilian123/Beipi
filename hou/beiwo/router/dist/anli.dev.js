"use strict";

var express = require('express');

var pool = require('../pool.js');

var r = express.Router(); // 案例标签

r.get('/altag/:wid', function (req, res, next) {
  var wid = parseInt(req.params.wid); // console.log(tid);

  pool.query('select * from tag where wid=?', [wid], function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
}); // 案例列表

r.get('/anli', function (req, res, next) {
  var m = parseInt(req.params.m);
  pool.query('select * from cases', function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
}); // 案例查询

r.get('/anli/:wid', function (req, res, next) {
  var wid = parseInt(req.params.wid);
  pool.query('select * from cases where wid=?', [wid], function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
}); // 案例筛选

r.post('/alfilt/:m', function (req, res, next) {
  var m = parseInt(req.params.m);
  var obj = req.body;
  var sta = obj.tagstyle;
  var room = obj.tagroom;
  var are = obj.tagarea;
  var pri = obj.tagprice;
  console.log(req.body);
  var len = 0; // 获取请求对象的长度

  for (var v in obj) {
    len++;
  } // console.log(count);


  if (len == 0) {
    pool.query('select * from cases limit ?,5', [m], function (err, result) {
      if (err) {
        next(err);
        return;
      } // console.log(result);


      res.send(result);
    });
  } else if (len == 1) {
    pool.query('select * from cases where wstyle=? or tagroom=? or tagarea=? or tagprice=? limit ?,5', [sta, room, are, pri, m], function (err, result) {
      if (err) {
        next(err);
        return;
      }

      console.log(result);
      res.send(result);
    });
  } else if (len == 2) {
    pool.query('select * from cases where (wstyle=? and tagroom=?) or (wstyle=? and tagarea=?) or (wstyle=? and tagprice=?) or (tagroom=? and tagarea=?) or (tagroom=? and tagprice=?) or (tagarea=? and tagprice=?) limit ?,5', [sta, room, sta, are, sta, pri, room, are, room, pri, are, pri, m], function (err, result) {
      if (err) {
        next(err);
        return;
      }

      console.log(result);
      res.send(result);
    });
  } else if (len == 3) {
    pool.query('select * from cases where (wstyle=? and tagroom=? and tagprice=?)  or (wstyle=? and tagprice=? and tagarea=?) or (tagroom=? and tagprice=? and tagarea=?) or (wstyle=? and tagarea=? and tagroom=?) limit m,5', [sta, room, pri, sta, pri, are, room, pri, are, sta, are, room, m], function (err, result) {
      if (err) {
        next(err);
        return;
      }

      console.log(result);
      res.send(result);
    });
  } else if (len == 4) {
    pool.query('select * from cases where wstyle=? and tagprice=? and tagarea=? and tagroom=? limit ?,5', [sta, pri, are, room, m], function (err, result) {
      if (err) {
        next(err);
        return;
      }

      console.log(result);
      res.send(result);
    });
  }
}); // 案例小标题

r.get('/seraltitle/:wid', function (req, res, next) {
  var wid = parseInt(req.params.wid);
  pool.query('select * from case_lgtitle where wid=?', [wid], function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
}); // 案例详细介绍表

r.get('/seraldetail/:wsid', function (req, res, next) {
  var wsid = parseInt(req.params.wsid);
  pool.query('select * from case_referal where wsid=?', [wsid], function (err, result) {
    if (err) {
      next(err);
      return;
    } // console.log(result);


    res.send(result);
  });
});
module.exports = r;