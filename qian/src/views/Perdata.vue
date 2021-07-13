<template>
  <div>
    <van-nav-bar title="编辑资料" left-arrow @click-left="onClickLeft" />
    <van-cell is-link>
      <!-- 使用 title 插槽来自定义标题 -->
      <template #title>
        <span class="custom-title">头像</span>
      </template>
      <template>
        <van-image
          round
          width="1.8rem"
          height="1.8rem"
          :src="`http://127.0.0.1:3000${uphoto}`"
        />
        <div class="primary"><van-uploader :after-read="afterRead" /></div>
      </template>
    </van-cell>
    <van-cell :value="userinfo.uname" is-link to="reuname">
      <!-- 使用 title 插槽来自定义标题 -->
      <template #title>
        <span class="custom-title">昵称</span>
      </template>
    </van-cell>
    <van-cell :value="uphone">
      <!-- 使用 title 插槽来自定义标题 -->
      <template #title>
        <span class="custom-title">当前登陆手机号</span>
      </template>
    </van-cell>

    <van-cell value="" is-link to="/repwd">
      <!-- 使用 title 插槽来自定义标题 -->
      <template #title>
        <span class="custom-title">修改密码</span>
      </template>
    </van-cell>
  </div>
</template>

<script>
import { Toast } from "vant";

export default {
  data() {
    return {
      uid: "",
      userinfo: "",
      uphone: "",
      uphoto: "",
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/my");
    },

    afterRead(file) {
      // 此时可以自行将文件上传至服务器
      // console.log(file.file);
      let formData = new FormData();
      formData.append("uploadFile", file.file);
      this.axios.post("user/upload", formData)
        .then((res) => {
          console.log(res);
          this.uphoto = res.data.img;
          if (res.data.code == 201) {
            Toast.success("修改成功");
          } else {
            Toast.fail(res.data.msg);
          }
        })
        .catch((err) => {
          console.error(err);
        });
    },
  },
  mounted() {
    // console.log(this.uid);

    this.axios.get(`user/seruser`).then((res) => {
      this.userinfo = res.data[0];
      this.uphoto = res.data[0].uphoto;
      this.uphone = res.data[0].uphone;
      // console.log(this.userinfo);
    });
  },
};
</script>

<style scoped>
.van-cell {
  position: relative;
}
.primary {
  position: absolute;
  top: 0;
  right: -20px;
  opacity: 0;
}
</style>