<template>
  <div>
    <van-tabbar v-model="active">
      <van-tabbar-item icon="wap-home" @click="waphome">首页</van-tabbar-item>
      <van-tabbar-item icon="graphic" @click="graphic">新家</van-tabbar-item>
      <!-- <van-tabbar-item icon="more" @click="showPopup">消息</van-tabbar-item> -->
      <van-tabbar-item icon="manager" @click="manager">我的</van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script>
export default {
  data() {
    return {
      active: 0,
    };
  },
  methods: {
    waphome() {
      this.$router.push("/home");
      this.active = 0;
    },
    graphic() {
      this.$router.push("/mnh");
      this.active = 1;
    },
    manager() {
      this.$router.push("/my");
      this.active = 2;
    },
  },
  mounted() {
    if (window.location.pathname === "/home") {
      this.active = 0;
    } else if (window.location.pathname === "/mnh") {
      this.active = 1;
    } else {
      this.active = 2;
    }
  },
};
</script>