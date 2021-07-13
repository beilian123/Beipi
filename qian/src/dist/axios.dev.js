"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _axios = _interopRequireDefault(require("axios"));

var _qs = _interopRequireDefault(require("qs"));

var _store = _interopRequireDefault(require("./store"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var Axios = _axios["default"].create({
  //   baseURL:"http://localhost:5050/",
  withCredentials: true
});

Axios.interceptors.request.use(function (config) {
  // console.log("进入请求拦截器...");
  //this.axios.post(
  //"user/signin",
  //{uname:dingding , upwd:123456}
  //)
  if (config.method === "post" && config.url != "user/upload") {
    config.data = _qs["default"].stringify(config.data);
  }

  if (localStorage.getItem("token")) {
    config.headers.token = localStorage.getItem("token");
  }

  if (sessionStorage.getItem("token")) {
    config.headers.token = sessionStorage.getItem("token");
  }

  return config;
}, function (error) {
  console.log("===发送请求拦截器报错===");
  console.log(error);
  console.log("===end===");
  Promise.reject(error);
});
Axios.interceptors.response.use(function (res) {
  // console.log("触发响应拦截器...")
  if (res.data.status == 410) {
    localStorage.removeItem("token");
    sessionStorage.removeItem("token"); //   store.commit("setIslogin",false);
    //   store.commit("setUname",""); //清空vuex里面的登录状态和用户名
    // }else if(res.data.code==-1){
    //   store.commit("setIslogin",false);
    //   store.commit("setUname","");
    //alert(res.data.msg+" 请先登录 !");
  } else if (res.data.token) {
    //   store.commit("setUname",res.data.uname);
    //   store.commit("setIslogin",true);
    //   if(res.remember==="true"){
    localStorage.setItem("token", res.data.token); //   }else{
    // sessionStorage.setItem("token", res.data.token);
  }

  return res;
}, function (error) {});
var _default = {
  install: function install(Vue, Option) {
    Vue.prototype.axios = Axios;
  }
};
exports["default"] = _default;