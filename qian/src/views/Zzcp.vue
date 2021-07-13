<template>
  <div class="zcp">
    <!-- 页头 -->
    <van-nav-bar
      title="整装产品"
      left-text=""
      left-arrow
      van-icon
      @click-left="onclickleft"
      name="../assets/common/fx.png"
      fixed
    >
    </van-nav-bar>

    <div class="two">
        <div>
          <h1>被窝整装套餐</h1>
          <span>标准套餐产品 省时省力省心</span>
          <br />
          <span>所有套餐均由被窝精工™提供施工？</span>
        </div>
        <img src="../assets/1.png" alt="" class="img" style="width:130px;height=130px"/>
      </div>
      <br />
    <div class="one">
      <div class="three" @click="ttz(i+1)" v-for="v,i of taocan" :key="i">
        <img :src="`/${v.tphoto}`" alt="" />
        <div>
          <span><span v-if="v.isnew">新品</span>{{v.tname}}</span>
          <span>{{v.tprice}} <span>元/m²</span></span>
          <br />
          <div class="tags">
          <span v-for="v2,i2 of tag[i]" :key="i2" class="tag">丨{{v2.lname}} </span>

          </div>
        </div>
      </div>
      <br />

      <div class="six">
        <span>服务流程</span>
        <a href="#">完整流程></a>
        <p>一站式服务，省心省力</p>
        <br />
        <van-grid :column-num="4">
          <van-grid-item icon="chat-o" text="初步了解" />
          <van-grid-item icon="shop-o" text="到店参观" />
          <van-grid-item icon="edit" text="设计量房" />
          <van-grid-item icon="wap-home-o" text="预交底" />
          <van-grid-item icon="orders-o" text="合同签约" />
          <van-grid-item icon="brush-o" text="标准施工" />
          <van-grid-item icon="home-o" text="施工验收" />
          <van-grid-item icon="diamond-o" text="10年质保" />
        </van-grid>
      </div>

      <div>
        <van-cell-group>
          <van-cell title="被窝精工™提供施工" is-link>
            <template slot="label">
              <div style="display: block">
                <span style="display: block">被窝家装标准化施工服务</span>
              </div>
            </template>
          </van-cell>
          <van-cell title="施工标准化">
            <img
              src="../assets/common/初步了解.png"
              alt=""
              style="width: 50px; height: 50px"
            />
            <template slot="label">
              <div style="display: block">
                <span style="display: block"
                  >标准化施工工序|百余项标准验收</span
                >
              </div>
            </template>
          </van-cell>
          <van-cell title="APP远程监管">
            <img
              src="../assets/common/初步了解.png"
              alt=""
              style="width: 50px; height: 50px"
            />
            <template slot="label">
              <div style="display: block">
                <span style="display: block">工地每日播报|隐藏工程拍VR</span>
              </div>
            </template>
          </van-cell>
          <van-cell title="专业团队不用盯">
            <img
              src="../assets/common/初步了解.png"
              alt=""
              style="width: 50px; height: 50px"
            />
            <template slot="label">
              <div style="display: block">
                <span style="display: block">直管工长|一站式管家贴身服务</span>
              </div>
            </template>
          </van-cell>
          <hr style="width: 80%" />
          <van-cell title="被窝平台安心保障" is-link>
            <template slot="label">
              <div style="display: block">
                <span style="display: block"
                  >不一样的施工套餐，一样的安心保障</span
                >
              </div>
            </template>
          </van-cell>
          <van-grid :column-num="3">
            <van-grid-item icon="chat-o" text="十年质保" />
            <van-grid-item icon="shop-o" text="延期赔偿" />
            <van-grid-item icon="edit" text="售后极速服务" />
          </van-grid>

          <!-- <van-grid :border="false" :column-num="3">
          <van-grid-item>
            <van-image src="../assets/common/质保.png" />
          </van-grid-item>
          <van-grid-item>
            <van-image src="../assets/common/赔偿.png" />
          </van-grid-item>
          <van-grid-item>
            <van-image src="../assets/common/售后.png" />
          </van-grid-item>
        </van-grid> -->
        </van-cell-group>
      </div>
    </div>
  </div>
</template>
<style scoped>
/* 第一部分 */
.one {
  width: 100%;
  padding: 0 14px;
  box-sizing: border-box;
}
.hd {
  background-color: white;
  color: black;
  font-size: 20 px;
}

/* 第二部分 */
.two {
  /* background-image: url(../assets/common/家装.jpg); */
  background-repeat: no-repeat;
  background-size: 100% 100%;
  -moz-background-size: 100% 100%;
  height: 160px;
  border-radius: 10px;
  width: 100%;
  display: flex;
  justify-content: space-between;
  background-color: #f3f4f8;
  box-sizing: border-box;
  padding: 30px 20px 0;
  margin-top: 46px;
}

.two h1{
  font-size: 24px;
  line-height: 24px;
}
.two span:nth-of-type(1){
  font-size: 14px;
  line-height: 50px;

}
.two span:nth-of-type(2){
  font-size: 12px;
  color: #999;
  line-height: -10px;
}
.ig {
  width: 12px;
  height: 12px;
}

/* 第三部分 */
.three {
  /* height: 240px; */
  border-radius: 10px;
  width: 94%;
  margin: 0 auto 20px;
  box-shadow: 1px 1px 10px 0 #ccc ;
}
.three > img {
  width: 100%;
  /* height: 70%; */
  border-radius: 10px 10px 0px 0px;
}
.three > div > span:first-child {
  margin-left: 5%;
  font-size: 20px;
  font-weight: bold;
  line-height: 60px;
}
.three > div > span:first-child span{
  display: inline-block;
  background-color: #e06462;
  font-size: 12px;
  color: white;
  height: 20px;
  line-height: 20px;
  width: 40px;
  text-align: center;
  position: relative;
  top: -4px;
  border-radius: 4px;
  /* margin-right: 4px; */
}
.three > div > span:nth-child(2) {
  float: right;
  margin-right: 5%;
  font-size: 22px;
  font-weight: bold;
  line-height: 60px;
}
.three > div > span:nth-child(2) span{
  font-size: 14px;
  position: relative;
  top: -10px;
}
.three .tags {
  padding-left: 5%;
  padding-bottom: 20px;
}

.three .tag {
  /* margin-left: 5%; */
  color: rgb(235, 164, 12);
  /* display: ; */
  padding-bottom: 20px;
  margin-bottom: 20px;
  font-size: 12px;
}

/* 第四部分 */
.four {
  height: 240px;
  margin-top: 20px;
  border-radius: 10px;
  width: 94%;
  margin: 0 auto;
}
.four > img {
  width: 100%;
  height: 70%;
  border-radius: 10px 10px 0px 0px;
}
.four > div > span:first-child {
  margin-left: 5%;
  font-size: 20px;
  font-weight: bold;
}
.four > div > span:nth-child(2) {
  float: right;
  margin-right: 5%;
  font-size: 25px;
  font-weight: bold;
}
.four > div > span:last-child {
  margin-left: 5%;
  color: rgb(235, 164, 12);
}

/* 第五部分 */
.five {
  height: 240px;
  margin-top: 20px;
  border-radius: 10px;
  width: 94%;
  margin: 0 auto;
}
.five > img {
  width: 100%;
  height: 70%;
  border-radius: 10px 10px 0px 0px;
}
.five > div > span:first-child {
  margin-left: 5%;
  font-size: 20px;
  font-weight: bold;
}
.five > div > span:nth-child(2) {
  float: right;
  margin-right: 5%;
  font-size: 25px;
  font-weight: bold;
}
.five > div > span:last-child {
  margin-left: 5%;
  color: rgb(235, 164, 12);
}

/* 第六部分 */
.six {
  margin-top: 20px;
  border: 1px solid white;
  width: 94%;
  margin: 0 auto;
}
.six > span:first-child {
  font-size: 25px;
  font-weight: bold;
}
.six > a {
  float: right;
  margin-top: 12px;
  color: rgb(161, 155, 140);
}
.six > p {
  color: rgb(161, 155, 140);
}
</style>
<script>
export default {
  data() {
    return {
      taocan:[],
      tag : [],
      tid:[]
    }
  },
  methods: {
    ttz(tid) {
      this.$router.push(`/inno/${tid}`);
    },
    onclickleft() {
      this.$router.push("/home");
    },
  },
  mounted() {
    this.axios.get("/tao/sertaocan")
    .then(res => {
      // console.log(res)
      this.taocan = res.data
      for(var i of this.taocan){
        this.tid.push(i.tid)
        // console.log(i.tid);
        this.axios.get(`tao/sertctag/${i.tid}`)
        .then(res => {
          // console.log(res)
          this.tag.push(res.data)
        })
      }
      // console.log(this.tag);
    });

  },
};
</script>