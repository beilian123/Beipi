<template>
  <div class="login">
    <!-- <van-nav-bar
      title="登录被窝家装"
      right-text="注册"
      @click-right="onClickRight"
    /> -->
    <div class="container">
      <div class="dd">
        <div class="d1">
          <div class="text">用户名</div>
          <div class="din1">
            <span>
              <input
                v-model="uname"
                @blur="unameState"
                type="text"
                placeholder="手机号或用户名"
              />
              <a @click="clearinput1" class="xddw" v-show="xs1">×</a>
            </span>
            <span v-html="unameimg"></span>
          </div>
        </div>
      </div>
      <div class="dd">
        <div class="d1">
          <div class="text">密码</div>
          <div class="din2">
            <span>
              <input
                v-model="upwd"
                @blur="upwdState"
                type="password"
                placeholder="请输入密码"
              />
              <a @click="clearinput2" class="xddw" v-show="xs2">×</a>
            </span>
            <span v-html="upwdimg"></span>
          </div>
        </div>
      </div>

      <div class="dd">
        <div class="d1">
          <div class="text">验证码</div>
          <div class="din3">
            <span>
              <input
                v-model="yzm"
                @blur="yzmState"
                type="text"
                placeholder="请输入验证码"
              />
              <a @click="clearinput3" class="xddw" v-show="xs3">×</a>
            </span>
            <span v-html="yzmdimg"></span>
          </div>
        </div>
      </div>
      <span class="code" @click="refreshCode">
        <security :identifyCode="identifyCode" class="yzmmm"></security>
      </span>
      <div class="yybtn">
        <button class="btn" @click="checkForm">登录</button>
        <button class="btn" @click="onClickRight">注册</button>
      </div>
    </div>
  </div>
</template>

<script>
import { Toast } from "vant";
import security from "../components/Yzm.vue";
export default {
  components: {
    security,
  },
  data() {
    return {
      uname: "",
      upwd: "",
      unameimg: "",
      upwdimg: "",
      xs1: false,
      xs2: false,
      xs3: false,
      yzm: "",
      yzmdimg: "",
      code: "",
      // 随机抽取四位数
      identifyCodes: "1234567890abcdefghjklmnpqrst",
      identifyCode: "",
      checked: false,
    };
  },
  methods: {
    clearinput1() {
      this.uname = "";
      this.unameimg = "";
      this.xs1 = false;
    },
    clearinput2() {
      this.upwd = "";
      this.upwdimg = "";
      this.xs2 = false;
    },
    clearinput3() {
      this.yzm = "";
      this.yzmdimg = "";
      this.xs3 = false;
    },
    onClickRight() {
      this.$router.push("/register");
    },
    unameState() {
      let reg = /^[\u4e00-\u9fa5]+$/;
      let reg2 = /^\w{2,12}$/;
      if (reg.test(this.uname) || reg2.test(this.uname)) {
        this.unameimg = `<img style="width:23px; height:23px;margin-left:15px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        this.xs1 = true;
        return true;
      } else {
        this.unameimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/error.png" alt="" />`;
        // Toast("用户名错误");
      }
      if (this.uname === "") {
        this.unameimg = "";
      } else {
        this.xs1 = true;
      }
    },
    upwdState() {
      let reg = /^\w{6,16}$/;
      if (reg.test(this.upwd)) {
        this.upwdimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        this.xs2 = true;
        return true;
      } else {
        this.upwdimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.upwd === "") {
        this.upwdimg = "";
      } else {
        this.xs2 = true;
      }
    },
    yzmState() {
      if (this.identifyCode == this.yzm) {
        this.yzmdimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.yzmdimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.yzm === "") {
        this.yzmdimg = "";
      } else {
        this.xs3 = true;
      }
    },
    checkForm() {
      if (this.unameState() && this.upwdState()) {
        // 发送http请求，执行注册业务
        // console.log(this.uname, this.upwd);
        this.axios
          .post("/user/login", { uname: this.uname, upwd: this.upwd })
          .then((result) => {
            console.log(result.data);
            if (result.data.code == 201) {
              Toast.success("登录成功");
              this.$router.push("/home");
            } else {
              Toast.fail("用户名或密码错误");
            }
          });
      }
    },
    // 验证码处理
    randomNum(min, max) {
      return Math.floor(Math.random() * (max - min) + min);
    },

    // 刷新验证码
    refreshCode() {
      this.identifyCode = "";
      this.makeCode(this.identifyCodes, 4);
    },
    makeCode(o, l) {
      for (let i = 0; i < l; i++) {
        this.identifyCode +=
          this.identifyCodes[this.randomNum(0, this.identifyCodes.length)];
      }
      // console.log(this.identifyCode);
    },
  },
  mounted() {
    if (localStorage.getItem("token")) {
      this.$router.push("/my");
    }
    if (this.uname !== "") {
      this.xs1 = true;
    }
    this.identifyCode = "";
    this.makeCode(this.identifyCodes, 4);
  },
};
// window.onload = function () {
//   //1.要开启定时器
//   setInterval(() => {
//     createImg();
//   }, 1000);
// };

// //表示图片的最大与最小值
// var img_min_width = 15;
// var img_max_width = 90;
// //控制图片出现的范围
// var x_left = 0;
// var x_right = window.innerWidth - img_max_width;
// var y_top = 0;
// var y_bottom = window.innerHeight - img_max_width;

// var img_node = document.createElement("img");
// //定时器函数
// function createImg() {
//   //2.创建图片标签对象
//   // 然后给这个标签对象添加src属性
//   img_node.setAttribute(
//     "src",
//     "https://img1.baidu.com/it/u=1298114138,3059252070&fm=26&fmt=auto&gp=0.jpg"
//   );
//   //并且把创建好的img标签追加到body标签里面去
//   document.body.appendChild(img_node);
//   //图片大小随机出现
//   img_node.setAttribute("width", getRandom(img_max_width, img_min_width));
//   //4图片出现的位置也是进行随机出现！
//   var x = getRandom(x_right, x_left);
//   var y = getRandom(y_bottom, y_top);
//   img_node.setAttribute(
//     "style",
//     "position:absolute;left:" + x + "px;top:" + y + "px;"
//   );

//   //5、当鼠标点击当前的这个星星时 就将当前这个星星移除掉
//   // img_node.setAttribute("onclick", "removeImg(this)");
// }
// setTimeout(() => {
//   img_node.setAttributeNode("style", "display:none;");
// }, 1000);
// function getRandom(max, min) {
//   return Math.floor(Math.random() * (max - min + 1) + min);
// }

// function removeImg(obj) {
//   obj.parentNode.removeChild(obj);
// }
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.login {
  /* background-color: red; */
  width: 100vw;
  background: url("../assets/common/6.jpg");
  background-size: 100%;
  position: fixed;
}
.login .container {
  width: 90%;
  margin: 30vh auto;
  padding: 10px;
  border: 3px solid white;
  border-radius: 10%;
  z-index: 1;
}
.login .dd {
  border-bottom: 1px solid #9e9e9e21;
}
.login .d1 {
  display: flex;
  margin: 10px 0;
  line-height: 32.3px;
}
.login .d1 input {
  border: 2px solid white;
  padding: 0.5vh 6vw 0.5vh 2vw;
  box-sizing: border-box;
}
.login .d1 .din1 {
  margin-left: 29px;
}
.login .d1 .din2 {
  margin-left: 45px;
}
.login .d1 .din3 {
  margin-left: 29px;
}

.login .code .yzmmm {
  width: 50vw;
  margin: 0 auto 2vh auto;
}
.login .din1 input,
.login .din2 input,
.login .din3 input {
  width: 50vw;
  height: 25px;
  background-color: transparent;
}
.login .container .tonyi {
  font-size: 12px;
  color: #9e9e9ea8;
  text-align: left;
  display: flex;
  width: 100%;
  margin: 10px 0;
}
.login .container .put {
  margin-top: 3px;
  margin-right: 8px;
}
.login .container .xddw {
  position: relative;
  left: -5vw;
}
.login .container .yybtn {
  display: flex;
  justify-content: space-between;
  margin: 1vh 10vw;
}
.login .container .btn {
  width: 30%;
  height: 40px;
  color: white;
  background-color: deepskyblue;
  border: 1px solid deepskyblue;
  border-radius: 50px;
}
</style>