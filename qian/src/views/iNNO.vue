<template>
  <div class="inno">
    <!-- f1导航栏 -->
    <div class="yet" style="background-color: white">
      <van-icon name="arrow-left" class="gft" @click="gty"></van-icon>
      <div>套餐详情</div>
    </div>
    <!-- f2轮播图 -->
    <div class="cvf">
      <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
        <van-swipe-item v-for="(kk, k) of diodio" :key="k"
          ><img :src="`/${kk}`" alt=""
        /></van-swipe-item>
      </van-swipe>
    </div>
    <!-- f3 -->
    <div class="jianyue">
      <div class="dbb">
        <div class="xbb">
          <span>2020简约套餐</span>
          <button>整装</button>
          <div><button>功能随行加载|风格多变</button></div>
        </div>
        <div class="bbx">
          999
          <span>㎡</span>
        </div>
      </div>
      <div class="nbb">
        <div class="bbd">
          <h2>套餐问答</h2>
          <h4 @click="look">查看全部<van-icon name="arrow"></van-icon></h4>
        </div>
        <div class="nnn">
          <img src="../assets/common/wen.png" alt="" />
          <span>被窝家装施工周期是多久?</span>
        </div>
        <div class="nnn">
          <img src="../assets/common/wen.png" alt="" />
          <span>标准化套餐装修都包含什么?</span>
        </div>
      </div>
      <!-- f4 -->
      <div class="taoxiang">
        <h2>套餐详情</h2>
        <div class="acg">
          <img src="../assets/common/12.jpg" alt="" />
          <div>
            <h2>简约套餐</h2>
            <p>超高性价比，创造无限幸福</p>
          </div>
        </div>
        <input type="radio" checked /><span>多重风格可选·我的家自定义</span>
        <p>墙漆16色可选|地板2色可选</p>
        <p>木门4色可选&nbsp;&nbsp;|橱柜3色可选&nbsp;|&nbsp;瓷砖3色可选</p>
        <div class="mumen">
          <img src="../assets/common/12.jpg" alt="" />
          <img src="../assets/common/12.jpg" alt="" />
        </div>
      </div>
    </div>
    <!-- f5 -->
    <div class="keting" v-for="(tt, koj) of diadia" :key="koj">
      <!-- <h2>客厅 | 卧室</h2> -->
      <!-- <h6>低饱和度彩色背景墙 使空间色彩柔和丰富</h6> -->
      <img :src="`/${tt}`" alt="" />
    </div>
  </div>
</template>
<script>
export default {
  props:['tid'],
  data() {
    return {
      diodio: [],
      diadia:[]
    };
  },
  methods: {
    gty() {
      this.$router.push("/zzcp");
    },
    look(){
      this.$router.push('/faqs');
    }
  },
  mounted() {
    this.axios.get(`/tao/sertcshow/${this.tid}`).then((result) => {
      let tp = result.data;
      tp.forEach((element) => {
        // console.log(element);
        this.diodio.push(element.dsphoto);
      });
      // console.log(this.diodio);
    });
    this.axios.get(`/tao/sertcdetail/${this.tid}`).then((result) => {
      let pt = result.data;
      pt.forEach((element) => {
        // console.log(element);
        this.diadia.push(element.ddphoto);
      });
      // console.log(this.diodio);
    });
  },
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
.inno {
  width: 100vw;
}
/* f1 */
.inno .yet {
  width: 90vw;
  position: fixed;
  /* display: flex; */
  /* justify-content: space-between; */
  padding: 2vh 5vw;
  z-index: 1;
}
.inno .yet .van-icon {
  font-size: 1rem;
  margin-right: 36vw;
  vertical-align: middle;
}
.inno .yet div {
  display: inline-block;
}
/* f2 */
.inno .cvf {
  padding-top: 7vh;
}
.inno .cvf .my-swipe img {
  width: 100vw;
}
/* f3 */
.inno .jianyue {
  width: 96vw;
  border-top-left-radius: 2vw;
  border-top-right-radius: 2vw;
  background-color: white;
  position: relative;
  top: -3vh;
  /* padding: 30px 2% 0 2%; */
  padding: 3vh 2vw 0 2vw;
}
.inno .jianyue .dbb {
  display: flex;
  justify-content: space-between;
  margin-bottom: 3vh;
}
.inno .jianyue .dbb .bbx {
  position: relative;
  margin-right: 5vw;
  font-size: 2.5rem;
}
.inno .jianyue .dbb .bbx span {
  position: absolute;
  /* top: vh; */
  font-size: 1rem;
}
.inno .jianyue .nbb .bbd {
  display: flex;
  justify-content: space-between;
  height: 3vh;
  line-height: 3vh;
  margin-bottom: 3vh;
}
.inno .jianyue .nbb .bbd h4 .van-icon {
  vertical-align: text-top;
}
.inno .jianyue .nbb .nnn {
  margin: 1vh 0;
}
.inno .jianyue .nbb .nnn img {
  width: 5vw;
  margin-right: 1vw;
  vertical-align: middle;
}
.inno .jianyue .nbb .nnn span {
  font-size: 0.9rem;
}
.inno .jianyue .nbb {
  margin-bottom: 3.6vh;
}
.inno .jianyue .dbb .xbb > :nth-child(2) {
  border: none;
  margin-left: 1vw;
  background-color: #3e88de54;
}
.inno .jianyue .dbb .xbb div button {
  border: none;
  margin-top: 1vh;
  background-color: #3e88de54;
}
/* f4 */
.inno .jianyue .taoxiang .acg {
  margin-top: 15px;
  position: relative;
}
.inno .jianyue .taoxiang input + span {
  font-weight: bold;
  font-size: 18px;
}
.inno .jianyue .taoxiang span + p {
  margin-top: 15px;
}
.inno .jianyue .taoxiang p {
  font-size: 10px;
  margin-top: 5px;
}
.inno .jianyue .taoxiang p + p {
  margin-bottom: 15px;
}
.inno .jianyue .taoxiang .acg img {
  width: 100%;
}
.inno .jianyue .taoxiang .acg div {
  width: 100%;
  position: absolute;
  margin-top: 20px;
  color: white;
  top: 0;
  text-align: center;
}
.inno .jianyue .taoxiang .acg div p {
  margin-top: 5px;
  font-size: 15px;
}
.inno .jianyue .taoxiang .acg div h2 {
  font-weight: 400;
}

.inno .jianyue .taoxiang .mumen {
  width: 100%;
  display: flex;
  justify-content: space-between;
}
.inno .jianyue .taoxiang .mumen img {
  width: 49%;
  border-radius: 4%;
}
/* f5 */

.inno .keting {
  margin-top: 20px;
  padding: 20px;
  box-sizing: border-box;
}
.inno .keting img {
  width: 99.9%;
  border-radius: 2%;
}
/* .inno .keting h2 {
  font-size: 22px;
  font-weight: 600;
}
.inno .keting h6 {
  font-size: 10px;
  color: #8a868385;
  margin: 10px 0;
} */
</style>