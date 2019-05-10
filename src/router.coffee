import Vue from 'vue'
import Router from 'vue-router'
import Inicio from './views/Inicio.vue'
import Comparar from "./views/Comparar.vue"
import Usuario from "./views/Usuario.vue"
import AnimeList from "./views/AnimeList.vue"
import listaAnimes from "./components/AnimeList/lista-animes.vue"
import Anime from "./components/Anime/Anime.vue"
import Error404 from "./views/Error404.vue"
import Admin from "./views/Admin.vue"

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
    ,
        path: "/Anime"
        component: AnimeList
        children: [
            path: ":nombre"
            component: Anime
        ,
            path: ""
            name: "Anime"
            component: listaAnimes
        ]
    ,
        path: "/ajustes"
        name: "Usuario"
        component: Usuario
    ,
        path: "/admin"
        name: "Admin"
        component: Admin
    ,
        path: "*"
        name: "404"
        component: Error404
    ]
    scrollBehavior: (to, from, savedPosition) ->
        x: 0
        y: 0
