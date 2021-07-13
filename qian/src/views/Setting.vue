<template>
  <div class="setting">
    <van-nav-bar title="设置" left-arrow @click-left="onClickRight" />
    <div class="sett">
      <div class="dizhi">
        <span class="s1"><img class="dz" src="img/dizhi.png" alt="" /></span>
        <p>收货地址管理</p>
        <span class="s2"><img class="dz2" src="img/arrow.png" alt="" /></span>
      </div>
    </div>
    <div class="br"></div>
    <div class="sett">
      <div class="dizhi">
        <span class="s1">
          <img class="dz" src="img/gywm.png" alt="" />
        </span>
        <p class="gywm">关于我们</p>
        <span class="s2">
          <img class="dz2" src="img/arrow.png" alt="" />
        </span>
      </div>
    </div>
    <div class="sett" @click="zx">
      <div class="dizhi">
        <span class="s1">
          <img class="dz" src="img/zxzh.png" alt="" />
        </span>
        <p class="gywm" >退出账号</p>
        <span class="s2">
          <img class="dz2" src="img/arrow.png" alt="" />
        </span>
      </div>
    </div>
  </div>
</template>

<script>
import { Dialog } from "vant";
export default {
  methods: {
    onClickRight() {
      this.$router.push("/my");
    },
    zx() {
      // console.log(1);
      Dialog.confirm({
        title: "",
        message: "确定要退出账号吗？",
      })
        .then((res) => {
          // on confirm
          // console.log(res);
          localStorage.clear()
          this.$router.push("/");
        })
        .catch((res) => {
          // on cancel
          // console.log(res);
        });
    },
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.setting {
  font-size: 15px;
}
.setting .sett,
.setting .finally {
  margin: 0 4%;
  padding: 10px 0;
}
.setting .dizhi {
  display: flex;
  vertical-align: middle;
  margin-top: 10px;
}
.setting .dizhi .s1 {
  width: 16px;
}
.setting .dizhi .s2 {
  width: 26px;
}
.setting .dz {
  width: 100%;
}
.setting .dz2 {
  width: 100%;
  margin-left: 210px;
}
.setting .dizhi p {
  margin-left: 10px;
}
.setting .br {
  width: 100%;
  height: 10px;
  background-color: whitesmoke;
}
.setting .dizhi .gywm {
  margin-right: 30px;
}
</style>