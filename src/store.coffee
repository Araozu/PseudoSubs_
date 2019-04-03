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

    txtAdicionalAnime: "Comprimido sin perder 1 solo pixel."

  mutations:
    cambiarBarraLateral: (state) ->
      state.barraLateralOculta = !state.barraLateralOculta
      localStorage?.setItem "barraLateralOculta", state.barraLateralOculta

    establecerAnime: (state, animes) ->
      localStorage?.setItem "animes", YAML.stringify animes
      state.animes = animes

    cambiarModoColor: (state, color) ->
      state.modoColor = color

    cambiarTxtAdicionalAnime: (state, txt) ->
      state.txtAdicionalAnime = txt

  actions: {}