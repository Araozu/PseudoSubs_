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

        navegador_hash:
            if localStorage?
                (localStorage.getItem "navegador_hash") ? ""
            else ""

        suscripciones:
            if localStorage?
                YAML.parse ((localStorage.getItem "suscripciones") ? "{}")
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

        cambiarNavegador_hash: (state, valor) ->
            state.navegador_hash = valor
            if localStorage? then localStorage.setItem "navegador_hash", valor

        agregarSuscripcion: (state, opcion) ->
            nuevasSuscr = Object.assign({}, state.suscripciones)
            nuevasSuscr[opcion] = true
            state.suscripciones = nuevasSuscr
            if localStorage?
                localStorage.setItem "suscripciones", (YAML.stringify nuevasSuscr)

        eliminarSuscripcion: (state, opcion) ->
            nuevasSuscr = Object.assign {}, state.suscripciones[opcion]
            delete nuevasSuscr[opcion]
            state.suscripciones = nuevasSuscr
            if localStorage?
                localStorage.setItem "suscripciones", (YAML.stringify nuevasSuscr)

    actions: {}