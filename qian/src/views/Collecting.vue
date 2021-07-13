<template>
  <div class="collecting">
    <van-nav-bar title="我的收藏" left-arrow @click-left="onClickLeft" />
    <div class="container">
      <div class="shocang" >
        <span class="scj">收藏夹</span>
        <span class="sc">{{collecting.length}}个收藏</span>
      </div>
      <div class="favorite">
        <div class="container">
          <div class="tup">
            <router-link :to='`/casedetail/${v.wid}`' class="tupian" v-for="v,i of collecting" :key="i">
              <img :src="v.wdphoto">
              <p>{{v.wtitle}}</p>
            </router-link>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>


export default {
  data() {
    return {
      collecting:{}
    };
  },
  computed: {
    
  },

  methods: {
    onClickLeft() {
      this.$router.push("/my");
    },
  },

  mounted() {
   this.axios.get('/user/serfocus')
   .then(res => {
    //  console.log(res)
     this.collecting = res.data
   })
  },
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
.collecting .container {
  width: 90%;
  margin: 0 5%;
  padding: 10px 0;
}
.collecting .container .shocang {
  margin-top: 5px;
  margin-bottom: 10px;
}
.collecting .container .scj {
  font-weight: bolder;
}
.collecting .container .sc {
  font-size: 13px;
  margin-left: 240px;
}
.collecting .container .fk {
  width: 80px;
  height: 80px;
  border-radius: 5px;
  background-color: #84919c3b;
  float: left;
}
.collecting .container .ml {
  margin-left: 5px;
}
.favorite .container {
  width: 90%;
  margin: 0 5%;
  padding: 10px 0;
}
.favorite .container .tup {
  float: left;
}
.favorite .container .tupian {
  width: 140px;
  height: 158px;
  margin: 5px;
  /* background-color: pink; */
  border-radius: 4%;
  float: left;
  font-size: 0.5rem;
  position: relative;
  display: block;
  text-decoration: none;
  color: black;
}
.favorite .container .tupian img{
  width: 140px;
  display: block;
  border-radius: 4%;
}
.favorite .container .tupian p{
  margin-top: 10px;
  margin-left: 4px;
}
</style>