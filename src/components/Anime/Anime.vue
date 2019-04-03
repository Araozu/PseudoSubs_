<template lang="pug">
  div.texto1
    div(v-if="estadoAnime === 0") Cargando...
    div(v-if="estadoAnime === -1") Error. Anime no encontrado
    div(v-if="estadoAnime === 1")
      div.titulo {{ anime.titulo }} -> {{ anime.anime_ID }}
      p.
        Advertencia. Página en construcción. Los links pueden estar errados. Para usar la versión estable,
        visita <a href="https://pseudosubs.com">https://pseudosubs.com</a>
      panel-de-descarga(:animeid="anime.anime_ID" :color="anime.color")
      //
</template>

<script lang="coffee">
  import panelDescarga from "./panel-descarga.vue"

  export default
    name: "Anime"
    components:
      'panel-de-descarga': panelDescarga
    data: ->
      anime: {}
      # -1 no encontrado, 0 cargando y 1 encontrado
      estadoAnime: 0
    created: ->
      _ = this
      animes = @$store.state.animes
      resultado = -1
      for anime in animes
        if anime.link is "/Anime/" + @$route.params.nombre
          _.anime = anime
          resultado = 1
          break
      @estadoAnime = resultado
      if resultado is 1
        @$store.commit "cambiarTxtAdicionalAnime", "#{anime.titulo}"
      else
        @$store.commit "cambiarTxtAdicionalAnime", "?"

    #

</script>

<style scoped lang="sass">

</style>