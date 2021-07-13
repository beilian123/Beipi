<template>
  <div class="register">
    <van-nav-bar title="注册被窝家装" left-arrow @click-left="onClickLeft" />
    <div class="container">
      <div class="dd">
        <div class="d1">
          <div>手机号</div>
          <div class="din1">
            <span>
              <input
                v-model="uname"
                @blur="unameState"
                type="text"
                placeholder="请输入手机号"
              />
            </span>
            <span v-html="unameimg"></span>
          </div>
        </div>
      </div>
      <div class="dd">
        <div class="d1">
          <div>密码</div>
          <div class="din2">
            <span>
              <input
                v-model="upwd"
                @blur="upwdState"
                type="password"
                placeholder="请输入密码"
              />
            </span>
            <span v-html="upwdimg"></span>
          </div>
        </div>
      </div>
      <div class="dd">
        <div class="d1">
          <div>确认密码</div>
          <div class="din3">
            <span>
              <input
                v-model="upwd2"
                @blur="upwdState2"
                type="password"
                placeholder="请输入确认密码"
              />
            </span>
            <span v-html="upwdimg2"></span>
          </div>
        </div>
      </div>
      <div class="tonyi">
        <div><input class="put" type="checkbox" v-model="agree" /></div>
        <div style="color:#fff;">
          我已阅读并同意&lt;&lt;被窝家装用户隐私政策&gt;&gt;及&lt;&lt;被窝家装用户服务协议&gt;&gt;
        </div>
      </div>
      <div>
        <van-button
          type="primary"
          class="btn active"
          @click="checkForm"
          :disabled="!agree"
          >免费注册</van-button
        >
      </div>
    </div>
  </div>
</template>

<script>
import { Toast } from "vant";

export default {
  data() {
    return {
      uname: "",
      upwd: "",
      upwd2: "",
      agree: false,
      unameimg: "",
      upwdimg: "",
      upwdimg2: "",
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/");
    },
    unameState() {
      let reg = /^1[3-9]\d{9}$/;
      if (reg.test(this.uname)) {
        this.unameimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.unameimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.uname === "") {
        this.unameimg = "";
      }
    },
    upwdState() {
      let reg = /^\w{6,16}$/;
      if (reg.test(this.upwd)) {
        this.upwdimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.upwdimg = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.upwd === "") {
        this.upwdimg = "";
      }
    },
    upwdState2() {
      let reg = /^\w{6,16}$/;
      if (this.upwd2 === "") {
        this.upwdimg2 = "";
      } else if (this.upwd == this.upwd2 && reg.test(this.upwd2)) {
        this.upwdimg2 = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.upwdimg2 = `<img style="width:23px; height:23px;margin-left: 15px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
    },
    checkForm() {
      if (this.unameState() && this.upwdState() && this.upwdState2()) {
        console.log("regist...");
        // 发送http请求，执行注册业务
        this.axios
          .post("/user/sigin", {
            uphone: this.uname,
            upwd: this.upwd,
            uname: "小被窝" + parseInt(Math.random(0.1, 1) * 10000000),
          })
          .then((res) => {
            console.log(res.data);
            if (res.data.code == 201) {
              Toast.success("注册成功");
              this.$router.push("/");
            } else {
              Toast.fail(res.data.msg);
            }
          });
      }
    },
  },
  mounted() {
    console.log(this.username);
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.register {
  position: fixed;
  height: 100vh;
  width: 100vw;
  background: url("../assets/common/6.jpg");
  background-size: 100%;
}
.register .container {
  width: 90%;
  margin: 30vh auto;
  padding: 10px;
  border: 3px solid white;
  border-radius: 10%;
  z-index: 1;
}
.register .dd {
  border-bottom: 1px solid #9e9e9e21;
}
.register .d1 {
  display: flex;
  margin: 10px 0;
  line-height: 32.3px;
}
.register .d1 input {
  border: 2px solid white;
  background-color: transparent;
  padding: 0.5vh 2vw;
}
.register .d1 .din1 {
  margin-left: 29px;
}
.register .d1 .din2 {
  margin-left: 45px;
}
.register .d1 .din3 {
  margin-left: 12px;
}
.register .din1 input,
.register .din2 input,
.register .din3 input {
  width: 50vw;
  height: 25px;
  padding-left: 2vw;
}
.register .container .tonyi {
  font-size: 12px;
  color: #9e9e9ea8;
  text-align: left;
  display: flex;
  width: 100%;
  margin: 10px 0;
}
.register .container .put {
  margin-top: 3px;
  margin-right: 8px;
}
.register .container .btn {
  width: 100%;
  height: 40px;
  color: white;
  background-color: deepskyblue;
  border: 1px solid deepskyblue;
  border-radius: 50px;
}
.register .container .btn .active {
  background-color: red;
}
</style>