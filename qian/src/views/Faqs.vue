<template>
  <div class="faqs">
    <van-nav-bar title="问答" left-arrow @click-left="onClickLeft" fixed/>
    <div class="container" v-for="(v, i) of sp" :key="i">
      <van-cell :title="v.question" icon="img/wen.png" />
      <div class="wenben">
        <van-icon name="img/da.png" size="22" />
        <div class="wz" style="height: 20px; overflow: hidden" v-if="cs">
          <p>{{ v.answer }}</p>
        </div>
        <div class="wz" v-else>
          <p>{{ v.answer }}</p>
        </div>
      </div>
      <!-- <div class="zk" @click="zksq" v-html="sq"></div> -->
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      sp: "",
      cs: false,
      sq: "收起",
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/inno/1");
    },
    zksq() {
      if (this.sq == "展开") {
        this.cs = false;
        this.sq = "收起";
      } else if (this.sq == "收起") {
        this.cs = true;
        this.sq = "展开";
      }
    },
  },
  mounted() {
    this.axios.get("/tao/serquestion").then((result) => {
      console.log(result.data)
      this.sp = result.data;
    });
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.faqs {
  background-color: #fff;
}
.van-icon__image {
  font-size: 22px;
  margin-right: 8px;
}
.van-cell__title {
  font-weight: bolder;
  font-size: 15px;
}
.faqs .container {
  margin: 0 4%;
  padding: 10px 0;
  width: 92vw;
  font-size: 14px;
  margin-top: 46px;
}
.faqs .container .wenben {
  display: flex;
  margin-top: 10px;
}
/* .faqs .container .wenben .wz{
} */
.faqs .container .wenben .daimg {
  width: 100%;
}
.faqs .container .zk {
  text-align: right;
  font-weight: bolder;
  font-size: 15px;
  color: #253fd1a3;
  margin: 5px 0;
}
.faqs .bianju {
  width: 100%;
  height: 10px;
  background-color: #d5d4d42b;
}
</style>