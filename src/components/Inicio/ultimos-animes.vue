<template lang="pug">
  div.texto2.fondo1.tarjeta
    // div.titulo Últimos animes
    anime-reciente(:obtener-nuevo-anime="obtenerSigAnime" :num-anime-actual="animeActual"
      :cantidad-animes="numAnimesRecientes")
    //

</template>

<script lang="coffee">
  import anime from "./anime.vue"

  export default
    name: "ultimos-eps"
    components:
      'anime-reciente': anime
    data: ->
      numAnimesRecientes: 4
      animeActual: 0
    computed:
      ultimosAnimes: ->
        animes = @$store.state.animes
        contador = 0
        resultado =
          for _anime in animes when contador < @numAnimesRecientes
            contador = contador + 1
            _anime
    methods:
      obtenerSigAnime: ->
        if @animeActual is @numAnimesRecientes
          @animeActual = 1
        else
          @animeActual++
        @ultimosAnimes[@animeActual - 1]

    #

</script>

<style scoped lang="sass">
  @import "../../assets/sass/variables"

  .titulo
    color: $colorPrincipal
    filter: opacity(0.4)
    font:
      size: 4rem
    padding: 40px


</style>