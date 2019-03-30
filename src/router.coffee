import Vue from 'vue'
import Router from 'vue-router'
import Inicio from './views/Inicio.vue'
import Comparar from "./views/Comparar.vue"

Vue.use Router

export default new Router
  mode: "history"
  base: process.env.BASE_URL
  routes: [
    path: "/"
    name: "Inicio"
    component: Inicio
  ,
    path: "/comparar"
    name: "Comparar"
    component: Comparar
  ]
  scrollBehavior: (to, from, savedPosition) ->
    x: 0
    y: 0
