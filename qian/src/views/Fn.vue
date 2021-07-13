<template>
  <div id="pujie">
    <!-- 上半部{广告+户型解读} -->
    <div class="bg-top">
      <!-- 广告 搜索框 背景图 -->
      <van-icon class="icon" size="20" name="arrow-left" @click="ttt" />
      <div>
        <div class="h2"><h2>按户型找设计</h2></div>
        <h5>海量户型方案 一键匹配AI设计</h5>
        <van-search
          class="input"
          v-model="value"
          label="北京 | "
          placeholder="搜小区看不同户型"
        >
        </van-search>
      </div>
      <div class="radiu">
        <!-- 户型解读 -->
        <div class="c2">
          <!-- 特邀设计大咖全面解析“眼镜”“H户型”等经典户型 -->
          <div class="jiedu">
            <h5>经典户型解读 ></h5>
            <h6>特邀设计大咖全面解析“眼镜”“H户型”等经典户型</h6>
          </div>
          <div class="img01"><img src="../assets/pujie.jpg" alt="" /></div>
        </div>
      </div>
    </div>

    <!-- 下半部{热门户型方案} -->
    <!-- 标题 -->
    <div class="bottom-tit">
      <p>热门户型方案</p>
    </div>
    <div class="bottom">
      <!-- 户型方案上层 -->
      <div class="bottom-top">
        <!-- 左上户型图 -->
        <div class="left-img">
          <img class="left-img" src="../assets/hxfa.jpg" />
        </div>
        <!-- 右上小轮播图 -->
        <div class="right-img">
          <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
            <van-swipe-item v-for="(item, i) in 4" :key="i"
              ><img src="../assets/hxfa.jpg" alt=""
            /></van-swipe-item>
          </van-swipe>
        </div>
      </div>
      <!-- 下层 -->
      <div class="bottom-bottom">
        <img src="../assets/hs.jpg" alt="" />
      </div>
    </div>

    <div class="bottom">
      <!-- 户型方案上层 -->
      <div class="bottom-top">
        <!-- 左上户型图 -->
        <div class="left-img">
          <img class="left-img" src="../assets/fn-b.jpg" />
        </div>
        <!-- 右上小轮播图 -->
        <div class="right-img">
          <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
            <van-swipe-item v-for="(item, i) in 4" :key="i"
              ><img src="../assets/hxfa.jpg" alt=""
            /></van-swipe-item>
          </van-swipe>
        </div>
      </div>
      <!-- 下层 -->
      <div class="bottom-bottom">
        <img src="../assets/hs.jpg" alt="" />
      </div>
    </div>

    <div class="bottom">
      <!-- 户型方案上层 -->
      <div class="bottom-top">
        <!-- 左上户型图 -->
        <div class="left-img">
          <img class="left-img" src="../assets/fn-b.jpg" />
        </div>
        <!-- 右上小轮播图 -->
        <div class="right-img">
          <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
            <van-swipe-item v-for="(item, i) in 4" :key="i"
              ><img src="../assets/hxfa.jpg" alt=""
            /></van-swipe-item>
          </van-swipe>
        </div>
      </div>
      <!-- 下层 -->
      <div class="bottom-bottom">
        <img src="../assets/hs.jpg" alt="" />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value: "",
    };
  },
  methods: {
    ttt() {
      this.$router.push("/home");
    },
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
#pujie {
  position: relative;
  top: 0px;
  margin: 0px;
  padding: 0px;
}
#pujie .icon {
  position: absolute;
  top: 10px;
  left: 20px;
}
#pujie .bg-top {
  background-image: url("../assets/mm.jpg");
  background-size: 100% 100%;
  width: 100%;
  height: 328px;
}

#pujie .bg-top .icon {
  color: white;
  position: fixed;
  margin-bottom: 20px;
}
#pujie div .h2 {
  text-align: center;
  position: absolute;
  left: 90px;
  top: 50px;
}
#pujie div h2 {
  margin: 0;
  font-weight: 600;
}
#pujie div h5 {
  position: absolute;
  left: 72px;
  top: 80px;
  margin: 0;
}
#pujie .radiu {
  width: 375px;
  position: absolute;
  top: 215px;
  background-color: white;
  border-top-left-radius: 6%;
  border-top-right-radius: 6%;
  padding-top: 20px;
}
#pujie .input {
  width: 89%;
  position: absolute;
  left: 20px;
  top: 130px;
  border-radius: 4%;
}
#pujie .radiu .c2 {
  margin: 0px 20px 0px 20px;
  padding-top: 5px;
  padding-bottom: 5px;
  background-color: #e8e8e8;
  flex-direction: row;
  flex-wrap: nowrap;
  position: relative;
  border-radius: 4%;
}
#pujie .radiu .c2 .jiedu {
  width: 200px;
  height: 50px;
  margin-top: 15px;
  position: relative;
  padding-bottom: 20px;
}
#pujie .radiu .c2 .jiedu h5 {
  position: absolute;
  left: 25px;
  top: 0px;
}
#pujie .radiu .c2 .jiedu h6 {
  margin: 0;
  position: absolute;
  left: 25px;
  top: 20px;
  color: gray;
}
#pujie .radiu .c2 .img01 {
  width: 80px;
  height: 70px;
  position: absolute;
  left: 220px;
  top: 10px;
}
#pujie .radiu .c2 .img01 img {
  width: 100%;
}
#pujie .bottom-tit {
  margin-left: 20px;
  margin-top: 25px;
}
#pujie .bottom {
  height: 150px;
  margin-left: 20px;
  margin-right: 20px;
}
#pujie .bottom .bottom-top {
  width: 100%;
  height: 100px;
  position: relative;
}
#pujie .bottom .bottom-top .left-img {
  width: 60%;
  height: 100px;
  position: absolute;
  left: 0;
  top: 0;
  border-radius: 4%;
  background-color: gray;
}
#pujie .bottom .bottom-top .right-img {
  width: 215px;
  height: 100px;
  position: absolute;
  left: 120px;
  top: 0;
  border-radius: 4%;
}
#pujie .bottom .bottom-top .right-img img {
  width: 100%;
  height: 100px;
  border-radius: 4%;
}
#pujie .bottom-bottom {
  width: 100%;
  height: 55px;
}
#pujie .bottom-bottom img {
  width: 100%;
  height: 100%;
}
</style>