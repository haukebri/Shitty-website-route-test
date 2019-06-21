import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import VueHighlightJS from "vue-highlightjs";

// Tell Vue.js to use vue-highlightjs
Vue.use(VueHighlightJS);
Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
