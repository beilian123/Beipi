<template>
  <div class="login">
    <van-nav-bar left-arrow @click-left="onClickLeft" title="修改用户名" />
    <div class="container">
      <div class="dd">
        <div class="d1">
          <div>用户名</div>
          <div class="din1">
            <span>
              <input v-model="uname" type="text" placeholder="请输入用户名" />
            </span>
          </div>
        </div>
      </div>

      <div>
        <button class="btn" @click="checkForm">确认修改</button>
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
      uid: "",
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/perdata");
    },
    checkForm() {
      console.log(this.uname);
      this.axios
        .post("/user/upuname", {uname:this.uname})
        .then((res) => {
        //   console.log(res);
          if (res.data.code == 201) {
            Toast.success("修改成功");
            this.$router.push("/perdata");
          } else {
            Toast.fail(`${res.data.msg}`);
          }
        });
    },
  },
  mounted() {
    this.uid = localStorage.getItem("uid");
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.login .container {
  width: 90%;
  margin: 0 5%;
  padding: 10px 0;
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
  border: 0px;
}
.login .d1 .din1 {
  margin-left: 29px;
}
.login .d1 .din2 {
  margin-left: 45px;
}
.login .din1 input,
.login .din2 input {
  width: 200px;
  height: 25px;
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
.login .container .btn {
  width: 100%;
  height: 40px;
  color: white;
  background-color: deepskyblue;
  border: 1px solid deepskyblue;
  border-radius: 50px;
  margin-top: 20px;
}
</style>