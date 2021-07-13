<template>
  <div id="home">
    <div>
      <!-- 上半部分 -->
      <div class="top">
        <!-- 我的新家 -->
        <div class="top-1">
          <div class="top-1-left">
            <h2>我的新家</h2>
            <h5>重庆嘉园 3室2厅 131㎡</h5>
          </div>
          <!-- 右上角图片 -->
          <div class="top-1-right"><img src="../assets/top.jpg" alt="" /></div>
        </div>
        <!-- 设计 解读 -->
        <div class="top-2">
          <div class="top-2-left">
            <img src="../assets/top-2-left.jpg" alt="" />
          </div>
          <div class="top-2-right">
            <img src="../assets/top-2-right.jpg" alt="" />
          </div>
        </div>
      </div>
      <!-- 下半部分 方案推荐 -->
      <div class="fa"><h2>方案推荐</h2></div>
      <div v-for="(item, i) in 2" :key="i" class="bottom">
        <div class="mmp">
          <img src="../assets/bottom.jpg" alt="" />
        </div>
      </div>
    </div>
    <tabbar />

  </div>
</template>
<script>
import tabbar from "../components/tabbar.vue";

export default {
  components: { tabbar },

  data() {
    return {
      active: 1,
    };
  },
  methods: {
    waphome() {
      this.$router.push("/home");
    },
    graphic() {
      this.$router.push("/mnh");
    },
    manager() {
      this.$router.push("/my");
    },
    graphic() {
      this.$router.push("/mnh");
    },
    waphome() {
      this.$router.push("/");
    },
    manager() {
      this.$router.push("/my");
    },
  },
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
#home .top {
  width: 100%;
  height: 310px;
  background-color: gray;
}
#home .top .top-1 {
  width: 100%;
  height: 110px;
  background-color: gray;
}
#home .top .top-1 .top-1-left {
  position: absolute;
  top: 25px;
  left: 20px;
  color: white;
}
#home .top .top-1 .top-1-left h2 {
  font-weight: 500;
}

#home .top .top-1 .top-1-right {
  width: 80px;
  height: 60px;
  position: absolute;
  right: 20px;
  top: 20px;
}
#home .top .top-1 .top-1-right img {
  width: 100%;
  height: 100%;
  border-radius: 8%;
}
#home .top .top-2 {
  width: 100%;
  height: 200px;
  background-color: white;
  border-top-left-radius: 6%;
  border-top-right-radius: 6%;
  position: relative;
}
#home .top .top-2 .top-2-left {
  width: 160px;
  height: 180px;
  border-radius: 6%;
  position: absolute;
  left: 20px;
  bottom: 0px;
  border: 1px solid gray;
}
#home .top .top-2 div img {
  width: 100%;
  border-radius: 6%;
}
#home .top .top-2 .top-2-right {
  width: 160px;
  height: 180px;
  border-radius: 6%;
  position: absolute;
  right: 20px;
  bottom: 0px;
  border: 1px solid gray;
}

/* 方案推荐 */
#home .fa {
  margin-left: 20px;
  margin-top: 30px;
  margin-bottom: 20px;
}
#home .bottom {
  width: 95%;
  margin-left: 5%;
}
#home .bottom .mmp {
  width: 90%;
  height: 300px;
}
#home .bottom .mmp img {
  width: 100%;
  height: 100%;
  border-radius: 6%;
}
</style>