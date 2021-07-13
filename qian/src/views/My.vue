<template>
  <div class="myinfo">
    <div class="info">
      <div class="setting">
        <router-link to="/setting">
          <img src="img/shezhi.png" alt="" />
        </router-link>
      </div>
      <router-link :to="`/perdata`">
        <div class="myinfoheader">
          <div class="headerleft">
            <img v-if="!userinfo[0].uphoto" src="img/touxiang/defult.jpg" />
            <img :src="`http://127.0.0.1:3000${userinfo[0].uphoto}`" v-else />
          </div>
          <div class="text">
            <div class="uname">{{ uname }}</div>
            <div class="par">查看编辑个人资料</div>
          </div>
        </div>
      </router-link>

      <!-- 标签栏 -->
      <div class="score">
        <div>
          <p class="count">0</p>
          <p>关注</p>
        </div>
        <div @click="collect">
          <p class="count">{{ num }}</p>
          <p>收藏</p>
        </div>
        <div>
          <p class="count">0</p>
          <p>心愿单</p>
        </div>
        <div>
          <p class="count">0</p>
          <p>购物车</p>
        </div>
        <div>
          <p class="count">0</p>
          <p>优惠券</p>
        </div>
      </div>
      <!-- 户型 -->
      <div class="sign">
        <div class="nr">
          <div>
            <div class="wenben1">美好居住第一步</div>
            <div class="wenben2">获取我家相关方案</div>
            <van-button class="btn" color="#283a5f">
              <span>+</span>
              添加户型
            </van-button>
          </div>
          <div class="dimg">
            <img class="imghx" src="img/huxing.png" alt="" />
          </div>
        </div>
        <div class="pay">
          <div>
            <img src="img/qy.png" alt="" />
            <p>签约</p>
          </div>
          <div>
            <img src="img/zd.png" alt="" />
            <p>账单</p>
          </div>
          <div>
            <img src="img/fwtd.png" alt="" />
            <p class="p3">服务团队</p>
          </div>
          <div>
            <img src="img/yqjr.png" alt="" />
            <p class="p4">邀请家人</p>
          </div>
        </div>
      </div>
      <!-- 商品订单 -->
      <div class="order">
        <div class="baoguo">
          <span class="article">商品订单</span>
          <span class="article2"
            >查看全部商品订单
            <div><img src="img/arrow.png" alt="" /></div>
          </span>
        </div>
        <div class="orderpay">
          <div>
            <img src="img/dfk.png" alt="" />
            <p class="dfk">待付款</p>
          </div>
          <div>
            <img src="img/dfh.png" alt="" />
            <p class="dfh">待发货</p>
          </div>
          <div>
            <img src="img/dsh.png" alt="" />
            <p class="dsh">待收货</p>
          </div>
          <div>
            <img src="img/dk.png" alt="" />
            <p class="tk">退款</p>
          </div>
        </div>
      </div>
      <!-- 轮播图 -->
      <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
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
      <!-- 反馈 客服 -->
      <div class="service">
        <div class="vice">
          <div class="fankui">
            <span class="t1"><img src="img/fankui.png" alt="" /></span>
            <p>问题反馈</p>
            <span class="t1"><img src="img/arrow.png" alt="" /></span>
          </div>
          <div class="kefu">
            <span class="t2"><img src="img/kefu.png" alt="" /></span>
            <p>联系客服</p>
            <span class="t2"><img src="img/arrow.png" alt="" /></span>
          </div>
        </div>
      </div>
      <!-- 标签栏 -->
      <tabbar></tabbar>
    </div>
  </div>
</template>

<script>
import { mapMutations } from "vuex";
import tabbar from "../components/tabbar.vue";


export default {
  components: { tabbar },

  data() {
    return {
      uid: "",
      userinfo: [[""]],
      uname: "",
      num: 0,
      active: 2,
    };
  },

  computed: {},

  methods: {
    ...mapMutations(["setcollect"]),

    waphome() {
      this.$router.push("/home");
    },
    graphic() {
      this.$router.push("/mnh");
    },
    manager() {
      this.$router.push("/my");
    },
    collect() {
      this.axios.get(`user/serfocus/${this.uid}`).then((res) => {
        // console.log(res);
        this.setcollect(res.data);
        this.$router.push("/collec");
      });
    },
  },
  mounted() {
    this.axios.get("/user/seruser").then((res) => {
      // console.log(res);
      this.userinfo = res.data;
      // console.log(this.userinfo[0].uphoto);
      this.uname = res.data[0].uname;
      // console.log(this.userinfo[0].uname.slice(1,-1));
    });
    this.axios.get(`/user/serfocus`).then((res) => {
        // console.log(res);
        this.setcollect(res.data);
        this.num = res.data.length;
      });
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.myinfo {
  font-size: 12px;
  background-color: whitesmoke;
}
.myinfo .info {
  width: 94%;
  margin: 0 3%;
  padding: 10px 0;
}
.myinfo .setting {
  height: 20px;
  text-align: right;
}
.myinfo .myinfoheader {
  display: flex;
  align-items: center;
  text-align: left;
}
.myinfo .myinfoheader img {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  border: 1px solid transparent;
  vertical-align: middle;
}
.myinfo .myinfoheader .text {
  margin-left: 15px;
  color: black;
}
.myinfo .myinfoheader .uname {
  font-size: 16px;
  font-weight: bolder;
  margin-bottom: 2px;
}
.myinfo .score {
  display: flex;
  justify-content: space-around;
  margin: 10px 0;
  text-align: center;
}
.myinfo .score .count {
  font-size: 16px;
  font-weight: bolder;
  margin-bottom: 5px;
}

.myinfo .sign {
  height: 162px;
  text-align: left;
  background-color: white;
  border-radius: 5px;
}
.myinfo .sign .nr {
  margin: 0 3%;
  padding: 8px 0;
  display: flex;
}
.myinfo .sign .nr .wenben1 {
  font-size: 15px;
  font-weight: bolder;
  color: black;
}
.myinfo .sign .nr .wenben2 {
  color: #969799;
}
.myinfo .sign .nr .btn {
  width: 25vw;
  height: 36px;
  border-radius: 5px;
  margin-top: 5px;
}
.myinfo .sign .nr .dimg {
  width: 115px;
  height: 80px;
  margin-left: 104px;
}
.myinfo .sign .nr .dimg .imghx {
  width: 100%;
}
/* 户型 */ /* 商品订单 */
.myinfo .pay,
.myinfo .orderpay {
  display: flex;
  justify-content: space-around;
  margin-top: 8px;
}
/* 户型 */ /* 商品订单 */
.myinfo .pay > div,
.myinfo .orderpay > div {
  width: 30px;
  height: 30px;
}
/* 户型 */ /* 商品订单 */
.myinfo .pay > div > img,
.myinfo .orderpay > div > img {
  width: 100%;
}
/* 户型 */ /* 商品订单 */
.myinfo .pay > div > p,
.myinfo .orderpay > div > p {
  width: 56px;
  margin-left: 3px;
}
.myinfo .pay .p3,
.myinfo .pay .p4 {
  margin-left: -7px;
}
/* 商品订单 */
.myinfo .order {
  height: 100px;
  background-color: white;
  border-radius: 5px;
  margin-bottom: 10px;
  margin-top: 10px;
}
.myinfo .order .baoguo {
  margin: 0 3%;
  padding: 8px 0;
  text-align: left;
  display: flex;
}
.myinfo .order .article {
  font-size: 15px;
  font-weight: bold;
  color: black;
}
.myinfo .order .article2 {
  margin-left: 148px;
  display: flex;
}
.myinfo .order .article2 > div {
  width: 20px;
}
.myinfo .order .article2 > div > img {
  width: 100%;
}
.myinfo .orderpay .dfk,
.myinfo .orderpay .dfh,
.myinfo .orderpay .dsh {
  margin-left: -2px;
}
.myinfo .orderpay > div > p .duikuan {
  margin-left: 2px;
}

/* 轮播图 */
.my-swipe {
  width: 100%;
  border-radius: 3vw;
  margin-bottom: 1.6vh;
}
.my-swipe .van-swipe-item img {
  width: 100%;
}
/* 反馈  客服 */
.myinfo .service {
  height: 78px;
  background-color: white;
  border-radius: 5px;
  font-size: 15px;
}
.myinfo .service .vice {
  margin: 0 3%;
  padding: 10px 0;
}
.myinfo .service .fankui,
.myinfo .service .kefu {
  display: flex;
}
.myinfo .service .fankui .t1,
.myinfo .service .kefu .t2 {
  width: 20px;
}
.myinfo .service .fankui img,
.myinfo .service .kefu img {
  width: 100%;
}
.myinfo .service .fankui > p,
.myinfo .service .kefu > p {
  margin: 0px 10px;
  margin-right: 214px;
  margin-bottom: 15px;
}
</style>
