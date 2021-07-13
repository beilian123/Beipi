<template>
  <div class="register">
    <van-nav-bar title="修改密码" left-arrow @click-left="onClickLeft" />
    <div class="container">
      <div class="dd">
        <div class="d1">
          <div>用户名</div>
          <div class="din1">
            <span>
              <input
                v-model="uname"
                @blur="unameState"
                type="text"
                placeholder="手机号或用户名"
              />
            </span>
            <span v-html="unameimg"></span>
          </div>
        </div>
      </div>
      <div class="dd">
        <div class="d1">
          <div>旧密码</div>
          <div class="din4">
            <span>
              <input
                v-model="oldpwd"
                @blur="oldpwdState"
                type="password"
                placeholder="请输入密码"
              />
            </span>
            <span v-html="upwdimg3"></span>
          </div>
        </div>
      </div>
      <div class="dd">
        <div class="d1">
          <div>新密码</div>
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

      <div>
        <van-button type="primary" class="btn active" @click="checkForm"
          >确认修改</van-button
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
      oldpwd: "",
      unameimg: "",
      upwdimg: "",
      upwdimg2: "",
      upwdimg3: "",
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/perdata");
    },
    unameState() {
      let reg = /^\w{2,12}$/;
      if (reg.test(this.uname)) {
        this.unameimg = `<img style="width:23px; height:23px;margin-left: 34px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.unameimg = `<img style="width:23px; height:23px;margin-left: 34px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.uname == "") {
        this.unameimg = "";
      }
    },
    oldpwdState() {
      let reg = /^\w{6,16}$/;
      if (reg.test(this.oldpwd)) {
        this.upwdimg3 = `<img style="width:23px; height:23px;margin-left: 38px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.upwdimg3 = `<img style="width:23px; height:23px;margin-left: 38px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.oldpwd == "") {
        this.upwdimg3 = "";
      }
    },
    upwdState() {
      let reg = /^\w{6,16}$/;
      if (reg.test(this.upwd)) {
        this.upwdimg = `<img style="width:23px; height:23px;margin-left: 33px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.upwdimg = `<img style="width:23px; height:23px;margin-left: 33px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.upwd == "") {
        this.upwdimg = "";
      }
    },
    upwdState2() {
      let reg = /^\w{6,16}$/;
      if (this.upwd == this.upwd2 && this.upwd2 != "" && reg.test(this.upwd2)) {
        this.upwdimg2 = `<img style="width:23px; height:23px;margin-left: 34px;vertical-align: middle;" src="img/correct.png" alt="" />`;
        return true;
      } else {
        this.upwdimg2 = `<img style="width:23px; height:23px;margin-left: 34px;vertical-align: middle;" src="img/error.png" alt="" />`;
      }
      if (this.upwd2 == "") {
        this.upwdimg2 = "";
      }
    },
    checkForm() {
      if (this.unameState() && this.upwdState() && this.upwdState2()) {
        console.log("regist...");
        this.axios
          .post("/user/uppwd", {
            uname: this.uname,
            oldpwd: this.oldpwd,
            newpwd: this.upwd,
          })
          .then((res) => {
            console.log(res);
            if (res.data.code == 201) {
              Toast.success("修改成功");
              this.$router.push("/perdata");
            } else {
              Toast.fail(res.data.msg);
            }
          });
      }
    },
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.register .container {
  width: 90%;
  margin: 0 5%;
  padding: 10px 0;
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
  border: 0px;
}
.register .d1 .din1 {
  margin-left: 29px;
}
.register .d1 .din2 {
  margin-left: 30px;
}
.register .d1 .din3 {
  margin-left: 12px;
}
.register .d1 .din4 {
  margin-left: 30px;
}
.register .din1 input,
.register .din2 input,
.register .din3 input,
.register .din3 input {
  width: 200px;
  height: 25px;
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
  margin-top: 20px;
}
.register .container .btn .active {
  background-color: red;
}
</style>