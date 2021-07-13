<template>
  <div>
    <van-nav-bar
      title="昵称"
      right-text="保存"
      left-arrow
      @click-left="onClickLeft"
      @click-right="onClickRight"
    />
    <van-cell-group>
      <van-field v-model="value" />
    </van-cell-group>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value: '',
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/perdata");
    },
  }
};

</script>