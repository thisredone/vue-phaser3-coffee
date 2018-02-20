import Vue from 'vue'
import App from './App'
{{#router}}
import router from './router/index'
{{/router}}

Vue.config.productionTip = false

new Vue({
  el: '#app',
  {{#router}}
  router,
  {{/router}}
  {{#if_eq build "runtime"}}
  render: h => h(App)
  {{/if_eq}}
  {{#if_eq build "standalone"}}
  components: { App },
  template: '<App/>'
  {{/if_eq}}
})
