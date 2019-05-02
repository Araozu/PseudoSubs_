import Vue from 'vue'
import Vuex from 'vuex'
import YAML from "yaml"

Vue.use(Vuex)

DEV = process.env.NODE_ENV == "development"

export default new Vuex.Store
    state:
        servidor: unless DEV then "" else ""

        animes:
            if localStorage?
                YAML.parse ((localStorage.getItem "animes") ? "[]")
            else []

        modoColor: (localStorage?.getItem "modoColor") ? "claro"
        tituloAnime: "Anime"
        txtAdicionalAnime: "Comprimido sin perder 1 solo pixel."
        mostrarImgAnime: false
        imgTituloAnime: ""
        rutaActual: [{nombre: "PseudoSubs", ruta: "/"}]
        usuarioActual:
            if localStorage?
                YAML.parse ((localStorage.getItem "usuario") ? "{}" )
            else {}

    mutations:
        establecerAnime: (state, animes) ->
            animesTxt = YAML.stringify animes
            animesLocal = localStorage?.getItem "animes"
            unless animesTxt is animesLocal
                localStorage?.setItem "animes", animesTxt
                state.animes = animes
                if DEV then console.log "Actualicé los animes"
            else
                if DEV then console.log "Ahorré tener que actualizar todo v:"

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

        cambiarUsuarioActual: (state, valor) ->
            state.usuarioActual = valor
            if localStorage? then localStorage.setItem "usuario", YAML.stringify valor

    actions: {}