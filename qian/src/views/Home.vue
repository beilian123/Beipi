<template>
  <!-- 唯一父元素 -->
  <div class="home">
    <div class="container">
      <!-- 页头固定-->
      <div class="yt">
        <!-- F1 -->
        <!-- 左定位 右登录状态 -->
        <div class="ww">
          <van-icon name="location-o" size="14px" style="margin-left: 5px" />
          <span id="dw"></span>
          <van-search
            class="srk"
            v-model="value"
            shape="round"
            placeholder="请输入搜索关键词"
          />
          <span id="hy"></span>
        </div>
      </div>
      <!-- 主体部分 -->
      <div class="zt">
        <!-- F2 -->
        <!-- 导航栏 -->
        <div class="orderpay">
          <div @click="sendGift">
            <div class="imgwh"><img src="img/index/zzcp.png" alt="" /></div>
            <p>整装产品</p>
          </div>
          <div @click="photo">
            <div class="imgwh"><img src="img/index/tp.png" alt="" /></div>
            <p>案例图集</p>
          </div>
          <div @click="shop">
            <div class="imgwh"><img src="img/index/hxfa.png" alt="" /></div>
            <p>户型方案</p>
          </div>
          <div @click="jzxc">
            <div class="imgwh"><img src="img/index/jzxc.png" alt="" /></div>
            <p>家装选材</p>
          </div>
        </div>
        <!-- F3 -->
        <!-- 户型设计 -->
        <div class="huxing" @click="shop">
          <router-link to="case">
            <p class="hxsj">按户型 找设计</p>
          </router-link>
          <van-swipe
            style="height: 20px"
            :autoplay="3000"
            vertical
            indicator-color="#fff"
          >
            <van-swipe-item v-for="value in 4" :key="value"
              >16454人收到设计师免费提案</van-swipe-item
            >
          </van-swipe>
          <button>立即体验</button>
          <img src="../assets/common/13.jpg" alt="" />
        </div>
        <!-- F4 -->
        <!-- 轮播图 -->
        <div class="lunbo">
          <van-swipe class="my-swipe cc" :autoplay="3000">
            <van-swipe-item>
              <img src="../assets/common/14.jpg" alt="" />
            </van-swipe-item>
            <van-swipe-item>
              <img src="../assets/common/15.jpg" alt="" />
            </van-swipe-item>
            <van-swipe-item>
              <img src="../assets/common/4.jpg" alt="" />
            </van-swipe-item>
          </van-swipe>
        </div>

        <!-- f5 -->
        <!--  -->

        <!-- F6 -->
        <!-- 案例推荐 -->
        <div class="anli">
          <h3>案例推荐</h3>
          <div class="tq">
            <div class="tqq" v-for="(ooo, o) in htot" :key="o">
              <router-link :to="`/casedetail/${o+1}`">
                <img :src="`/${ooo.wdphoto}`" alt="" />
                <p>{{ ooo.wtitle }}</p>
                <div>
                  <button>{{ ooo.wstyle }}</button>
                </div>
                <span>{{ ooo.region }}</span>
                <span>{{ ooo.warea + "|" + ooo.wprice }}</span>
              </router-link>
            </div>
          </div>
        </div>
      </div>
      <tabbar />
    </div>
  </div>
</template>

<script>
import tabbar from "../components/tabbar.vue";

export default {
  components: { tabbar },

  data() {
    return {
      kkt: 36,
      active: 0,
      htot: [],
      uid: "",
      value: "",
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
    sendGift() {
      this.$router.push("/zzcp");
    },
    photo() {
      this.$router.push("/case");
    },
    shop() {
      this.$router.push("/fn");
    },
    jzxc() {
      this.$router.push("/jzxc");
    },
  },
  mounted() {
      window.scrollTo(0, 0);

    // this.uid = localStorage.getItem("uid");
    let geoc = new BMap.Geocoder();
    let gl = navigator.geolocation;
    gl.getCurrentPosition((locResult)=>{
      let lat = locResult.coords.latitude;
      let lng = locResult.coords.longitude;
      // 逆地址查询
      let p = new BMap.Point(lng, lat);
      geoc.getLocation(p, function(result) {
        console.log(result);
        let dw = document.getElementById("dw");
        // gg.innerHTML = result.address;
        dw.innerHTML = result.address.slice(0, 2);
        console.log(result.address);
      });
    });
    this.axios.get(`/user/seruser`).then((result) => {
      // console.log(result.data[0].uname);
      let hy = document.getElementById("hy");
      hy.innerHTML = `欢迎` + result.data[0].uname.slice(0,3);
    });
    // let photo=document.getElementById("photo");
    // photo.addEventListener("click",()=>{
    //   this.$router.push("/anli")
    // })
    this.axios.get("/an/anli").then((result) => {
      let pt = result.data;
      pt.forEach((element) => {
        this.htot.push(element);
      });
    });
  },
};
</script>

<style scoped>
/* css */
* {
  margin: 0;
  padding: 0;
}
.home{
  background-color: whitesmoke;
}

.home .container {
  width: 94%;
  margin: 0 3%;
  padding: 10px 0;
}

.home .zt .huxing,
.home .zt .lunbo,
.home .zt .anli {
  margin-top: 2vw;
}


.home .yt {
  position: fixed;
  width: 94vw;
  height: 7vh;
  top: 0;
  background-color: white;
  z-index: 1;
}

/* f1 */
.home .yt .ww {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-top: 6px;
}

.home .ww #dw {
  width: 32px;
  font-size: 15px;
  font-weight: bolder;
  color: #043c57;
  margin-right: 5px;
}

.van-icon .van-icon-location-o {
  font-size: 0;
}
.van-search .van-cell {
  padding: 5px 5px 5px 0;
  width: 210px;
}

.home #hy {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  margin-left: 5px;
  margin-right: 5px;
  font-size: 15px;
  color: #009688;
  font-weight: bolder;
}

/* f2 */
.home .zt {
  margin-top: 6.6vh;
}

.home .orderpay {
  width: 100%;
  height: 85px;
  display: flex;
  background-color: white;
  border-radius: 10px;
  align-items: center;
}
.home .orderpay > div {
  margin: 0 auto;
  font-size: 14px;
  font-weight: bolder;
  justify-content: space-between;
}
.home .orderpay .imgwh {
  width: 30px;
  height: 30px;
  margin: 0 auto;
}
.home .orderpay .imgwh > img {
  width: 100%;
}

/* f3 */
.home .zt .huxing {
  padding: 3vw;
  position: relative;
  background-color: white;
  border-radius: 10px;
}
.home .zt .huxing .hxsj {
  font-weight: bolder;
  color: black;
}
.home .zt .huxing .van-swipe {
  margin: 2vh 0 2vh 0;
  font-size: 0.8rem;
}
.home .zt .huxing button {
  padding: 2.5vw 5vw;
  border-radius: 1vw;
  border-style: none;
  background: #00214e;
  color: white;
}
.home .zt .huxing img {
  position: absolute;
  right: 5vw;
  width: 32vw;
  top: 0vh;
  border-radius: 5%;
}
/* f4 */
.home .zt .lunbo .van-swipe img {
  width: 100%;
  height: 12vh;
  border-radius: 3vw;
}
/* f5 */
.home .zt .anli {
  margin-bottom: 7vh;
}
.home .zt .anli .tq {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.home .zt .anli .tq .tqq {
  width: 45.6vw;
  display: inline-block;
  margin: 1vh 0;
}
.home .zt .anli .tq .tqq img {
  width: 100%;
  border-radius: 6px;
}
.home .zt .anli .tq .tqq p {
  /* white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis; */
  font-size: 13px;
  color: black;
}

.home .zt .anli .tq .tqq span:last-child {
  float: right;
}
.home .zt .anli .tq .tqq div button {
  color: #3f51b5e6;
  border-style: none;
  padding: 0.3vh 1.2vw;
  background-color: #3f51b521;
  margin: 0.6vh 0;
  font-size: 0.5rem;
}
.home .zt .anli .tq .tqq span {
  font-size: 12px;
  color: #858683;
}
</style>