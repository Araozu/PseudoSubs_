import Vue from 'vue'
import App from './App.vue'
import router from './router.coffee'
import store from './store.coffee'
import './registerServiceWorker'
import VueDisqus from "vue-disqus"
import VueAnalytics from "vue-analytics"
import VueGSignIn from "vue-google-signin-button"

Vue.config.productionTip = false;
Vue.use(VueDisqus);
Vue.use(VueGSignIn);
Vue.use(VueAnalytics, {
    id: 'UA-113477820-1',
    router
});

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app');
