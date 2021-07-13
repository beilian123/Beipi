<template>
  <div id="app">
    <!-- <keep-alive>
      <router-view v-if="$route.meta.keepAlive" />
    </keep-alive> -->
    <router-view />
  </div>
</template>
<script>

export default {
  mounted() {
    let token =
      localStorage.getItem("token") || sessionStorage.getItem("token");
    if (!token) {
      this.$router.push("/");
    }
  },
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
}
</style>
