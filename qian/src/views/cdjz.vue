<template>
  <div>
    <van-pull-refresh v-model="isLoading" @refresh="refresh" class="cd">
      <van-list
        v-model="loading"
        :finished="finished"
        finished-text="没有更多了"
        @load="onLoad"
        offset="1"

      >
        <van-cell v-for="item in list" :key="item" >{{item}}</van-cell>
      </van-list>
    </van-pull-refresh>
  </div>
</template>

<script>
// import { List } from 'vant';

export default {
  data() {
    return {
      list: [],
      loading: false,
      finished: false,
      isLoading: false,
    };
  },
  methods: {
    onLoad() {
        console.log('加载');
      setTimeout(() => {
        if (this.isLoading) {
            
          this.list = [];
          this.isLoading = false;

          console.log('isLoading = false');
        }

        for (let i = 0; i < 10; i++) {
          this.list.push(this.list.length + 1);
        }
        this.loading = false;

        console.log("loading = false");

        if (this.list.length >= 40) {
          this.finished = true;

          console.log("finished = true;");
        }
      }, 1000);
    },
    refresh() {
      // 清空列表数据
      this.finished = false;

      // 重新加载数据
      // 将 loading 设置为 true，表示处于加载状态
      this.loading = true;
      console.log("loading = true;");
      this.onLoad();
    },
  },
};
</script>

<style>
    .cd{
        margin-bottom: 50px;
    }
</style>