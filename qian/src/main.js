import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'


Vue.config.productionTip = false

// 配置vant-ui
import Vant from 'vant'
import 'vant/lib/index.css'
Vue.use(Vant)

// 配置axios
import axios from './axios'

Vue.use(axios);


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
