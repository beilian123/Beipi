<template>
  <div class="login">
    <span class="code" @click="refreshCode">
      <security :identifyCode="identifyCode"></security>
    </span>
  </div>
</template>

<script>
import security from "../components/Yzm.vue";
export default {
  components: {
    security,
  },
  data() {
    return {
      code: "",
      // 随机抽取四位数
      identifyCodes: "1234567890abcdefghjklmnpqrst",
      identifyCode: "",
      checked: false,
    };
  },
  mounted() {
    this.identifyCode = "";
    this.makeCode(this.identifyCodes, 5);
  },
  methods: {
    // 验证码处理
    randomNum(min, max) {
      return Math.floor(Math.random() * (max - min) + min);
    },

    // 刷新验证码
    refreshCode() {
      this.identifyCode = "";
      this.makeCode(this.identifyCodes, 5);
    },
    makeCode(o, l) {
      for (let i = 0; i < l; i++) {
        this.identifyCode +=
          this.identifyCodes[this.randomNum(0, this.identifyCodes.length)];
      }
      console.log(this.identifyCode);
    },
  },
};
</script>

<style scoped>
</style>
