<template>
  <div class="anli">
    <!-- 页头 -->
    <van-nav-bar left-arrow title="看案例" fixed @click-left="back" />

    <van-pull-refresh
      v-model="isLoading"
      @refresh="refresh"
      success-text="刷新成功"
    >
      <!-- 导航栏 -->
      <van-dropdown-menu class="ul" z-index="20">
        <van-dropdown-item v-model="value" :options="option" @change="optval" />
        <van-dropdown-item
          v-model="value1"
          :options="option1"
          @change="optval"
        />
        <van-dropdown-item
          v-model="value2"
          :options="option2"
          @change="optval"
        />
        <van-dropdown-item
          v-model="value3"
          :options="option3"
          @change="optval"
        />
      </van-dropdown-menu>

      <!-- 触底加载组件 -->
      <van-list
        v-model="loading"
        :finished="finished"
        finished-text="没有更多了"
        @load="onLoad"
        offset="30"
        :immediate-check="false"
        class="cart xlsx"
      >
        <!-- 主体部分 -->

        <van-cell v-if="!anli"></van-cell>
        <van-cell
          v-for="(v, i) of anli"
          :key="i"
          v-else
          @click="detail(`${v.wid}`)"
        >
          <div class="img">
            <img :src="`${v.wphoto}`" alt="" width="100%" />
          </div>
          <p>{{ v.warea }}·{{ v.wroom.slice(0, 4) }}·{{ v.wprice }}</p>
          <p>{{ v.wtitle }}</p>
          <div class="button">
            <button v-for="(v2, i2) of altags[i]" :key="i2">
              {{ v2 }}
            </button>
          </div>
        </van-cell>
      </van-list>
    </van-pull-refresh>
  </div>
</template>
<script>
import { Toast } from "vant";

export default {
  data() {
    return {
      value: 0,
      value1: 0,
      value2: 0,
      value3: 0,
      switch1: false,
      switch2: false,
      option: [
        { text: "居室", value: 0 },
        // { text: "不限", value: 1 },
        { text: "一室", value: "1" },
        { text: "两室", value: "2" },
        { text: "三室", value: "3" },
        { text: "四室", value: "4" },
        { text: "五室及以上", value: "5" },
      ],
      option1: [
        { text: "面积", value: 0 },
        // { text: "不限", value: 1 },
        { text: "60㎡以下", value: "60" },
        { text: "60-90㎡", value: "60-90" },
        { text: "90-120㎡", value: "90-120" },
        { text: "120-150㎡", value: "120-150" },
        { text: "150㎡以上", value: "150" },
      ],
      option2: [
        { text: "风格", value: 0 },
        { text: "现代简约", value: "现代简约" },
        { text: "北欧", value: "北欧" },
        { text: "新中式", value: "新中式" },
        { text: "欧式", value: "欧式" },
        { text: "美式", value: "美式" },
        { text: "轻奢", value: "轻奢" },
        { text: "复古", value: "复古" },
        { text: "工业风", value: "工业风" },
      ],
      option3: [
        { text: "费用", value: 0 },
        { text: "5-10万", value: "5-10" },
        { text: "10-20万", value: "10-20" },
        { text: "20-30万", value: "20-30" },
        { text: "30-50万", value: "30-50" },
        { text: "50万以上", value: "50" },
      ],
      // 案例列表数据
      anli: [],
      anlicount: 0,
      wid: [],
      alttag: [],
      altags: [],
      isLoading: true,

      m: 0,
      loading: false,
      finished: false,
    };
  },
  methods: {
    onLoad() {
      this.loading = false;
      // console.log("加载");
      let m = (this.m += 5);
      // console.log(m);
      this.loaddata(m).then((res) => {
        if (res.length == 0) {
          this.finished = true;
        }
      });
    },

    optval() {
      this.finished = false;
      this.loading = false;
      window.scrollTo(0, 0);
      this.m = 0;
      this.anli = [];
       this.altags = [];
      this.loaddata(0).then((res) => {});
    },

    // 页面加载
    loaddata(m) {
      return new Promise((resolve, reject) => {
        let val = {
          tagroom: this.value,
          tagarea: this.value1,
          tagstyle: this.value2,
          tagprice: this.value3,
        };
        for (var v in val) {
          if (val[v] == 0) {
            delete val[v];
          }
        }
        this.loading = true;
        console.log(m);
        console.log(val);
        this.axios.post(`/an/alfilt/${m}`, val).then((res) => {
          // console.log("封装函数里的：", res.data);
          this.loading = false;
          resolve(res.data);
          if (res.data[0]) {
            for (var v of res.data) {
              // console.log(v);
              this.anli.push(v);
            }
            this.alcount = res.data.length;
            // console.log(this.anli);
            // console.log(res.data.length, res.data);
            this.wid = [];
            for (var i = 0; i < this.alcount; i++) {
              this.wid.push(res.data[i].wid);
            }
            console.log(this.wid);
                //

            for (var k of this.wid) {
              console.log(k);
              this.axios.get(`/an/altag/${k}`).then((res) => {
                // this.loading = false;

                // console.log(res.data);
                this.alttag = [];
                for (var j of res.data) {
                  console.log(j);
                  this.alttag.push(j.lname);
                }
                console.log(this.alttag);
                this.altags.push(this.alttag);
                console.log(this.altags);
              });
            }
          } else {
            this.finished = true;
          }
        });
      });
    },

    back() {
      // alert(1)
      this.$router.push("/home");
    },

    // 下拉刷新
    refresh() {
      this.finished = true;
      this.m = 0;
      this.anli = [];
      this.value = 0;
      this.value1 = 0;
      this.value2 = 0;
      this.value3 = 0;
      this.loaddata(0).then((res) => {
        // console.log("刷新", res);
        this.isLoading = false;
        this.finished = true;
        Toast("刷新成功");
        this.finished = false;
      });
    },

    // 跳转到案例详情
    detail(wid) {
      this.$router.push(`/casedetail/${wid}`);
      // console.log(wid);
    },
  },
  created() {
    this.loaddata(0).then((res) => {
      // console.log(res);
    });
  },
  // beforeRouteLeave(to, from, next) {
  //   console.log("离开案例列表页面");
  //   console.log("to", to);
  //   console.log("from", from);
  //   if (to.name == "Anlixqy") {
  //     from.meta.keepAlive = true;
  //     localStorage.setItem("hc", true);
  //   } else {
  //     from.meta.keepAlive = false;
  //   }
  //   next();
  // },
  // beforeRouteEnter(to, from, next) {
  //   console.log(`路由进入home...`);
  //   console.log("to", to);
  //   console.log("from", from);
  //   if (from.name == "Anlixqy") {
  //     // to.meta.keepAlive=false;
  //   }

  //   next();
  // },
};
</script>

<style>
.anli .img {
  width: 100%;
  /* height: 220px; */
  /* overflow: hidden; */
  display: block;
  margin: 0 auto;
  /* border-radius: 4px; */
}
.anli .img img {
  border-radius: 4px;
}
.anli .ul {
  margin-top: 46px;
  position: fixed;
  width: 100%;
  z-index: 20;
}
.anli .cart {
  padding-top: 96px;
  /* width: 90%; */
  margin: 0 auto;
}
.anli .cart .img + p {
  font-size: 1rem;
  line-height: 2.5rem;
}
.anli .cart p + p {
  height: 25px;
  overflow: hidden;
  font-size: 20px;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.anli .cart .button {
  height: 50px;
}
.anli .cart .button button {
  border-radius: 12px;
  border-style: none;
  background-color: #f7f6f2;
  color: #a88e69;
  padding: 2px 8px;
  font-size: 0.5rem;
  line-height: 1rem;
  margin: 10px 4px 20px 0;
}
p {
  color: black;
}
</style>