<template>
  <div id="detail">
    <van-nav-bar
      left-arrow
      title="案例详情"
      fixed
      @click-left="back"
      style=""
    />

    <img :src="`/${anli[0].wdphoto}`" class="zs" />
    <div class="body">
      <div class="h2">
        {{ anli[0].wtitle }}
        <div class="addcode" v-if="isadd||addcode" @click="readd(`${anli[0].wid}`)">已收藏</div>
        <div @click="add(`${anli[0].wid}`)" v-else><span>+</span>收藏</div>
      </div>
      <div class="tag">
        <div v-for="(v, i) of tag" :key="i">{{ v.lname }}</div>
      </div>

      <div class="price">案例价{{ anli[0].wprice.slice(0, 2) }}万</div>
      <div class="hx">
        <span>
          <p>户型</p>
          <p>{{ anli[0].wroom }}</p>
        </span>
        <span>
          <p>面积</p>
          <p>{{ anli[0].warea }}</p>
        </span>
        <span>
          <p>地区</p>
          <p>{{ anli[0].region }}</p>
        </span>
        <span>
          <p>风格</p>
          <p>{{ anli[0].wstyle }}</p>
        </span>
      </div>
    </div>

    <div class="detail">
      <div v-for="(v, i) of smtitle" :key="i" style="margin-bottom: 20px">
        <h2 class="title">{{ v.wsname }}</h2>
        <div v-for="(v2, i2) of seraldetail[i]" :key="i2">
          <img :src="`/${v2.rephoto}`" alt="" />
          <p>{{ v2.recontent }}</p>
        </div>
      </div>
    </div>

    <div class="bottom">
      <div>
        <span>在线咨询</span>
        <p>装修顾问快速答疑</p>
      </div>
      <div>
        <span>电话咨询</span>
        <p>装修顾问专属服务</p>
      </div>
    </div>
  </div>
</template>

<script>
import { Toast } from "vant";

export default {
  props: ["wid"],

  data() {
    return {
      anli: [{ wprice: "" }],
      tag: [],
      smtitle: [],
      wsid: [],
      seraldetail: [],
      addcode:'',
      isadd : false
    };
  },
  methods: {
    back() {
      this.$router.go(-1); //返回上一层
    },

    // 添加收藏
    add(wid) {
      // console.log(wid);
      this.axios.post("/user/addfocus", {wid:wid}).then((res) => {
        // console.log(res)
        if (res.data.code == 201) {
          Toast.success("收藏成功");
          this.addcode=res.data.code
        }
      });
    },

    // 取消收藏
    readd(wid){

      this.axios.delete(`/user/delfocus/${wid}`).then((res) => {
        // console.log(res)
        if (res.data.code == 200) {
          Toast.success("取消成功");
          this.addcode = '';
          this.isadd = false
        }
      });
    }
  },
  mounted() {
      window.scrollTo(0, 0);

    // console.log(this.wid);
    // 案例查询
    this.axios.get(`/an/anli/${this.wid}`).then((res) => {
      this.anli = res.data;
      console.log(res);
    });

    // 案例标签
    this.axios
      .get(`/an/altag/${this.wid}`)
      .then((res) => {
        // console.log(res)
        this.tag = res.data;
      })
      .catch((err) => {
        console.error(err);
      });

    // 小标题
    this.axios.get(`/an/seraltitle/${this.wid}`).then((res) => {
      // console.log(res);
      this.smtitle = res.data;
      this.wsid = [];
      this.seraldetail = [];
      for (var v of res.data) {
        this.wsid.push(v.wsid);
        // console.log(this.wsid);
        this.axios.get(`/an/seraldetail/${v.wsid}`).then((res) => {
          // console.log(res);
          this.seraldetail.push(res.data);
        });
      }
      // console.log(this.seraldetail);
    });

    // 查看收藏列表
    this.axios.get(`/user/serfocus`)
    .then(res => {
      for(var v of res.data){
        // console.log('v.wid'+v.wid);
        // console.log('wid'+this.wid);
        if(v.wid == this.wid){
          this.isadd = true
        }
      }
      // console.log(this.isadd);
    })
    
  },
};
</script>

<style scoped>
#detail .zs {
  width: 100%;
  margin-top: 46px;
}
#detail .body {
  width: 100%;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  position: relative;
  top: -26px;
  background-color: white;
  padding: 20px 8px 20px 20px;
  box-sizing: border-box;
  background-color: #f9f9f9;
}
#detail .body .h2 {
  font-weight: bolder;
  display: block;
  font-size: 18px;
  line-height: 32px;
}
#detail .body .h2 div {
  color: white;
  background-color: black;
  display: inline-block;
  margin-left: 16px;
  font-size: 12px;
  width: 70px;
  height: 24px;
  line-height: 24px;
  text-align: center;
  padding: 0px 0 0 20px;
  box-sizing: border-box;
  border-radius: 20px;
  position: relative;
  top: -4px;
}
#detail .body .h2 div span {
  font-size: 26px;
  font-weight: initial;
  position: absolute;
  left: 12px;

  /* line-height: 32px; */
}
#detail .body .tag {
  display: flex;
  margin-top: 10px;
}
#detail .body .tag div {
  border-radius: 12px;
  border-style: none;
  background-color: #f7f3ee;
  color: #a88e69;
  padding: 2px 10px;
  font-size: 0.5rem;
  line-height: 1rem;
  margin: 10px 10px 20px 0;
}

#detail .body .hx {
  display: flex;
  font-size: 14px;
  margin-top: 10px;
}
#detail .body .hx span {
  margin-right: 30px;
}
#detail .body .hx span p:nth-of-type(1) {
  font-size: 12px;
  color: #212121;
  margin-bottom: 4px;
}
#detail .detail h2 {
  font-size: 16px;
}
#detail .detail {
  padding: 0 20px 90px;
  box-sizing: border-box;
}
#detail .detail img {
  width: 100%;
  margin-top: 10px;
  margin-bottom: 8px;
}
#detail .detail p {
  font-size: 13px;
}
#detail .bottom {
  display: flex;
  padding: 10px 20px 20px;
  justify-content: space-between;
  text-align: center;
  position: fixed;
  bottom: 0;
  width: 89%;
  background-color: white;
}
#detail .bottom div:nth-of-type(1) {
  border: 2px solid #212121;
  border-radius: 4px;
}
#detail .bottom div:nth-of-type(2) {
  background-color: #212121;
  color: white;
  border-radius: 4px;
}
#detail .bottom div {
  /* padding: 10px 0; */
  width: 160px;
  height: 50px;
  box-sizing: border-box;
}
#detail .bottom div span {
  font-size: 14px;
  display: inline-block;
  padding-top: 6px;
}
#detail .bottom div p {
  font-size: 12px;
}
#detail .body .h2 .addcode{
  background-color: rgba(0, 0, 0, 0);
  color: #212121;
  border: #212121 1px solid;
  padding: 0;
}
</style>