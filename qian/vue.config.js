module.exports={
  chainWebpack:config=>{
    config.plugins.delete("prefetch")
    //删除index.html开头的带有prefetch属性的link，不要异步下载暂时不需要的页面组件文件
  },
  devServer: {
    proxy: {
      '/an': { //今后，当前项目中凡是以/开头的请求都归当前代理服务器代为发送。
        target: `http://127.0.0.1:3000/v1`,
        changeOrigin: true //允许跨域
      },
      '/tao': { //今后，当前项目中凡是以/开头的请求都归当前代理服务器代为发送。
        target: `http://127.0.0.1:3000/v1`,
        changeOrigin: true //允许跨域
      },
      '/user': { //今后，当前项目中凡是以/开头的请求都归当前代理服务器代为发送。
        target: `http://127.0.0.1:3000/v1`,
        changeOrigin: true //允许跨域
      }
    },
  }
}
