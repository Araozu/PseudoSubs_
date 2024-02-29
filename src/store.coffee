import Vue from 'vue'
import Vuex from 'vuex'
import YAML from "yaml"

Vue.use(Vuex)

almacenarEnLocalStorage = (clave, valor, fnActualizar) =>
    datosTxt = JSON.stringify valor
    datosLocal = localStorage?.getItem clave
    unless datosTxt is datosLocal
        localStorage?.setItem clave, datosTxt
        fnActualizar valor


export default new Vuex.Store
    state:
        servidor: ""
        servidor2: "https://pseudosubs-v1.araozu.dev"

        animes:
            if localStorage?
                JSON.parse ((localStorage.getItem "animes") ? "[]")
            else []

        episodios:
            if localStorage?
                JSON.parse ((localStorage.getItem "episodios") ? "[]")
            else []

        episodios_opciones:
            if localStorage?
                JSON.parse ((localStorage.getItem "episodios_opciones") ? "[]")
            else []

        episodios_opciones_meta:
            if localStorage?
                JSON.parse ((localStorage.getItem "episodios_opciones_meta") ? "[]")
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
                JSON.parse ((localStorage.getItem "suscripciones") ? "{}")
            else {}

    mutations:
        establecerAnime: (state, animes) ->
            fnActualizar = (v) => state.animes = v
            almacenarEnLocalStorage "animes", animes, fnActualizar

        establecerEpisodios: (state, episodios) ->
            fnActualizar = (v) => state.episodios = v
            almacenarEnLocalStorage "episodios", episodios, fnActualizar

        establecerEpisodiosOpciones: (state, episodios) ->
            fnActualizar = (v) => state.episodios_opciones = v
            almacenarEnLocalStorage "episodios_opciones", episodios, fnActualizar

        establecerEpisodiosOpcionesMeta: (state, episodios) ->
            fnActualizar = (v) => state.episodios_opciones_meta = v
            almacenarEnLocalStorage "episodios_opciones_meta", episodios, fnActualizar

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
