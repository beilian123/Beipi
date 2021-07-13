<template>
  <div id="gg">
    <div class="gg-g">
      <!-- 顶部导航 -->
      <div class="top-t">
        <div class="arrow">
          <van-icon color="black" class="icon" size="22" @click="back" name="arrow-left" />
        </div>
        <div class="p">家装选材</div>
        <div class="search">
          <van-search v-model="value"  shape="round" placeholder="搜好货" />
        </div>
        <div class="shop"><img src="../assets/xc/shop-car.png" alt="" /></div>
      </div>
      <!-- 顶部轮播图 -->
      <div class="top">
        <van-swipe class="my-swipe" :autoplay="1000" indicator-color="white">
          <van-swipe-item
            ><img src="../assets/xc/swipe-a.png" alt=""
          /></van-swipe-item>
          <van-swipe-item
            ><img src="../assets/xc/swipe-b.jpg" alt=""
          /></van-swipe-item>
          <van-swipe-item
            ><img src="../assets/xc/swipe-c.png" alt=""
          /></van-swipe-item>
        </van-swipe>
      </div>
      <!-- 材料导航分类 -->
      <div class="more">
        <!-- 第一排 -->
        <div class="m-1">
          <div>
            <img src="../assets/xc/m1.jpg" alt="" />
            <p>油烟机</p>
          </div>
          <div>
            <img src="../assets/xc/m2.jpg" alt="" />
            <p>燃气灶</p>
          </div>
          <div>
            <img src="../assets/xc/m3.jpg" alt="" />
            <p>马桶</p>
          </div>
          <div>
            <img src="../assets/xc/m4.jpg" alt="" />
            <p>浴淋花洒</p>
          </div>
          <div>
            <img src="../assets/xc/m5.jpg" alt="" />
            <p>厨盆</p>
          </div>
        </div>
        <!-- 第二排 -->
        <div class="m-1">
          <div>
            <img src="../assets/xc/m6.jpg" alt="" />
            <p>墙面砖</p>
          </div>
          <div>
            <img src="../assets/xc/m7.jpg" alt="" />
            <p>地面砖</p>
          </div>
          <div>
            <img src="../assets/xc/m8.jpg" alt="" />
            <p>强化地板</p>
          </div>
          <div>
            <img src="../assets/xc/m9.jpg" alt="" />
            <p>开关面板</p>
          </div>
          <div>
            <img src="../assets/xc/more.png" alt="" />
            <p>更多品类</p>
          </div>
        </div>
        <br />
        <hr />
        <div class="m-3"><img src="../assets/xc/m3.png" alt="" /></div>
      </div>
      <!-- 底部图片 -->
      <div class="bottom">
        <div class="b-1">
          <div class="b1"><img src="../assets/xc/b1.png" alt="" /></div>
          <div class="b2"><img src="../assets/xc/b2.png" alt="" /></div>
        </div>
        <div class="b-2">
          <div class="b2"><img src="../assets/xc/b3.png" alt="" /></div>
          <div class="b2"><img src="../assets/xc/b4.png" alt="" /></div>
          <div class="b2"><img src="../assets/xc/b5.png" alt="" /></div>
        </div>
      </div>
      <div class="g-2">
        <div class="hhh">
          <h3>品牌推荐</h3>
          <a href="#">更多推荐 ></a>
        </div>
        <!-- 图片*3 -->
        <div class="ppp">
          <div><img src="../assets/xc/g-2-1.jpg" alt="" /></div>
          <div><img src="../assets/xc/g-2-2.jpg" alt="" /></div>
          <div><img src="../assets/xc/g-2-3.jpg" alt="" /></div>
        </div>
      </div>
      <div class="g-3">
        <div><h3>被窝优选</h3></div>
        <div class="g-b">
            <div><img src="../assets/xc/gb1.jpg" alt=""><p>顶级灶具</p><p>￥3490.00</p></div>
            <div><img src="../assets/xc/gb2.jpg" alt=""><p>吧唧智能门铃</p><p>￥349.00</p></div>
            <div><img src="../assets/xc/gb3.jpg" alt=""><p>吧唧智能坐便器</p><p>￥349.00</p></div>
            <div><img src="../assets/xc/gb4.jpg" alt=""><p>吧唧不锈钢盆下水管-Bia J</p><p>￥349.00</p></div>
            <div><img src="../assets/xc/gb5.jpg" alt=""><p>吧唧-龙头-墙出水-脸盆</p><p>￥39.00</p></div>
            <div><img src="../assets/xc/gb6.jpg" alt=""><p>吧唧-洗碗机-BJ-1.0</p><p>￥349.00</p></div>
        </div>
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
    back(){
      this.$router.push("/home");
    }
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}

#gg .gg-g {
  width: 375px;
  left: 0;
  top: 0;
}
#gg .gg-g .top img{
  width: 100%;height: 100%;
}
#gg .gg-g .top {
  width: 375px;
  height: 154px;
  border-bottom-left-radius: 10%;
  border-bottom-right-radius: 10%;
  /* clear: both; */
}
#gg .gg-g .top-t {
  width: 335px;
  margin-left: 20px;margin-right: 20px;
  height: 40px;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
}
#gg .gg-g .top-t .arrow {
  padding-top: 7px;
}
#gg .gg-g .top-t .p {
  font-size: 19px;
  padding-top: 7px;
  font-weight: 700;
}
#gg .gg-g .top-t .search {
  width: 180px;
}
#gg .gg-g .top-t .search .van-search{
  padding-top: 5px;
}
#gg .gg-g .top-t .shop {
  width: 25px;
  height: 25px;
  border-radius: 100%;
  border: 1px solid gray;
  margin-top: 7px;
}
#gg .gg-g .top-t .shop img {
  width: 15px;
  margin: 7px;
  margin-left: 4px;
}
#gg .gg-g .top img {
  width: 100%;
  height: 204px;
  border-bottom-left-radius: 10%;
  border-bottom-right-radius: 10%;
  
}
#gg .gg-g .more {
  width: 335px;
  height: 220px;
  position: absolute;
  left: 20px;
  top: 210px;
  border-radius: 4%;
  background-color: white;
  border: 2px solid #0aa1ed;
  color: #0aa1ed;
}
#gg .gg-g .more .m-1 {
  width: 100%;
  height: 75px;
  display: flex;
  
}
#gg .gg-g .more .m-1 > div {
  width: 67px;
  height: 100%;
  display: flex;
  flex-flow: column;
  text-align: center;
  font-size: 12px;
}
#gg .gg-g .more .m-1 div > img {
  width: 40%;
  height: 50%;
  margin: 30% 30% 10% 30%;
}
#gg .gg-g .more .m-1 div > img:hover{
  width: 60%;margin: 15%;height: 60%;
  border: 1px solid #0aa1ed;
}
#gg .gg-g .more .m-3 {
  width: 100%;
  height: 40px;
  padding-top: 10px;
}
#gg .gg-g .more .m-3 > img {
  width: 100%;
}
#gg .gg-g .bottom {
  width: 335px;
  /* height: 180px; */
  margin-left: 20px;
  margin-top: 270px;
  border-radius: 4%;
}
#gg .gg-g .bottom > div {
  height: 82px;
  width: 100%;
}
#gg .gg-g .bottom .b-1 {
  display: flex;
  justify-content: space-between;
}
#gg .gg-g .bottom .b-1 .b1 {
  width: 220px;
  height: 82px;
}
#gg .gg-g .bottom .b-1 .b1 img {
  width: 100%;
  height: 75px;
  border-radius: 4%;
  border: 2px solid #0aa1ed;

}
#gg .gg-g .bottom .b-1 .b2 {
  width: 107px;
  height: 82px;
}
#gg .gg-g .bottom .b-1 .b2 img {
  width: 100%;
    border: 2px solid #0aa1ed;
  height: 75px;
  border-radius: 4%;
}
#gg .gg-g .bottom .b-2 {
  display: flex;
  justify-content: space-between;
}
#gg .gg-g .bottom .b-2 > div {
  width: 107px;
  height: 82px;
}
#gg .gg-g .bottom .b-2 > div > img {
  width: 100%;
  height: 100%;
  border-radius: 4%;
    border: 2px solid #0aa1ed;

}
#gg .gg-g .g-2 {
  width: 375px;
}
#gg .gg-g .g-2 .hhh {
  width: 335px;
  margin-top: 40px;
  margin-left: 20px;
  margin-bottom: 10px;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
}
#gg .gg-g .g-2 .hhh a {
  margin-top: 7px;
  color: gray;
}
#gg .gg-g .g-2 .ppp {
  width: 335px;
  height: 120px;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  margin-left: 20px;
  margin-right: 20px;
}
#gg .gg-g .g-2 .ppp div {
  width: 100px;
  height: 100%;
  border-radius: 4%;
}
#gg .gg-g .g-2 .ppp div img {
  border-radius: 4%;
  width: 100%;
    border: 2px solid #0aa1ed;
  height: 100%;
}
#gg .gg-g .g-3 {
  width: 335px;
  margin-left: 20px;
  margin-top: 40px;
}
#gg .gg-g .g-3 .g-b {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
#gg .gg-g .g-3 .g-b>div{
  width: 160px;height: 190px;
  text-align: left;
  border-radius: 4%;
 border: 2px solid #0aa1ed;
  margin-top: 10px;
}
#gg .gg-g .g-3 .g-b>div>img{
  width: 90%;height: 60%;
  margin-left: 5%;
  border-radius: 4%;
}
#gg .gg-g .g-3 .g-b>div>p{
  margin-top: 7px;margin-left: 8px;
  color: #0aa1ed;
}
</style>