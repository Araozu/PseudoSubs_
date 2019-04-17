import Vue from 'vue'
import Vuex from 'vuex'
import YAML from "yaml"

Vue.use(Vuex)

DEV = process.env.NODE_ENV == "development"

export default new Vuex.Store
    state:
        barraLateralOculta:
            (localStorage?.getItem "barraLateralOculta") == "true" ? true

        animes:
            if localStorage?
                YAML.parse ((localStorage.getItem "animes") ? "[]")
            else
                []

        modoColor: localStorage?.getItem "modoColor" ? "claro"
        tituloAnime: "Anime"
        txtAdicionalAnime: "Comprimido sin perder 1 solo pixel."
        mostrarImgAnime: false
        imgTituloAnime: "19_2_fruits_basket"
        rutaActual: [{nombre: "PseudoSubs", ruta: "/"}]

    mutations:
        cambiarBarraLateral: (state) ->
            state.barraLateralOculta = !state.barraLateralOculta
            localStorage?.setItem "barraLateralOculta", state.barraLateralOculta

        establecerAnime: (state, animes) ->
            localStorage?.setItem "animes", YAML.stringify animes
            state.animes = animes

        cambiarModoColor: (state, color) ->
            state.modoColor = color

        cambiarTituloAnime: (state, txt) ->
            state.tituloAnime = txt

        cambiarTxtAdicionalAnime: (state, txt) ->
            state.txtAdicionalAnime = txt

        cambiarEstadoImgAnime: (state, valor) ->
            state.mostrarImgAnime = valor

        cambiarImgTituloAnime: (state, valor) ->
            state.imgTituloAnime = valor

        cambiarRutaActual: (state, valor) ->
            state.rutaActual = valor

    actions: {}