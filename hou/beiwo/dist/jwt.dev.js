"use strict";

// 引入模块依赖
var fs = require('fs');

var path = require('path');

var jwt = require('jsonwebtoken'); //生成token


function generateToken(data) {
  var created = Math.floor(Date.now() / 1000);
  var cert = fs.readFileSync(path.join(__dirname, './pem/rsa_private_key.pem')); //私钥 可以自己生成

  var token = jwt.sign({
    data: data,
    exp: created + 1440 * 60
  }, cert, {
    algorithm: 'RS256'
  });
  return token;
} // 校验token


function verifyToken(token) {
  var cert = fs.readFileSync(path.join(__dirname, './pem/rsa_public_key.pem')); //公钥 可以自己生成

  var res;

  try {
    if (token !== undefined) {
      var result = jwt.verify(token, cert, {
        algorithms: ['RS256']
      }) || {};
      res = result.data || {};
    }
  } catch (e) {
    res = e;
  }

  return res;
}

module.exports = {
  generateToken: generateToken,
  verifyToken: verifyToken
};