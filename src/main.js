import Vue from 'vue'
import App from './App.vue'
import router from './router.coffee'
import store from './store.coffee'
import './registerServiceWorker'
import VueDisqus from "vue-disqus"

Vue.config.productionTip = false;
Vue.use(VueDisqus);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app');
