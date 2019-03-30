<template lang="pug">
  div
    div.anime(v-if="!errorAnimesNoEncontrados")
      div.fondo_1(:style="'background-color: ' + anime.color")
      div.fondo_texto(:class="'fondo_texto--' + $store.state.modoColor")
      div.cont
        div.titulo {{ anime.titulo }}

        img.imagen.tarjeta(:src="anime.imgUrl")
        div.animeCont
          div.descr {{ anime.descripcion }}
          br
          div.eps {{ anime.eps === 0? '?': anime.eps }} episodios.
          br
          div.estudio Estudio: {{ anime.estudio }}
          br
          div.emision {{ anime.diaDeEmision? 'Nuevo ep los ' + anime.diaDeEmision : '' }}
          br
        div.posActual {{ numAnimeActual }} de {{ cantidadAnimes }}
    div(v-else) Error. No hay animes que mostrar. Revisa tu conexión a internet.

</template>

<script lang="coffee">

  DEV = process.env.NODE_ENV == "development"

  export default
    name: "anime"
    data: ->
      anime: {}
      intervalo: {}
      primeraCarga: true
    props:
      obtenerNuevoAnime:
        type: Function
        required: true
      numAnimeActual:
        type: Number
        required: true
      cantidadAnimes:
        type: Number
        required: true
    computed:
      errorAnimesNoEncontrados: ->
        if @$store.state.animes[0]?
          if @primeraCarga
            if DEV then console.log "Los animes existen, y voy a ciclarlos v:<"
            @ciclarAnimes()
            @primeraCarga = false
          false
        else
          true
    methods:
      ciclarAnimes: ->
        _ = this
        clearInterval @intervalo

        @anime = @obtenerNuevoAnime()

        @intervalo = setInterval (() ->
          _.anime = _.obtenerNuevoAnime()
        ), 10000
    beforeDestroy: ->
      clearInterval @intervalo
  #

</script>

<style scoped lang="sass">
  @import "../../assets/sass/variables"

  .anime
    transition: background-color 250ms ease-out
    height: 580px
    width: 100%
    position: relative

  .titulo
    font:
      family: Muli, "Open Sans", sans-serif
      size: xx-large
    color: white
    padding-bottom: 10px
    height: 54px
    // position: relative
    // width: 500px
    overflow: visible

  .fondo_1, .fondo_texto, .cont
    position: absolute
    width: 100%
    height: 580px

  .fondo_1
    z-index: 1
    transition: background-color 500ms

  .fondo_texto
    z-index: 3

  .fondo_texto--claro
    background: linear-gradient(to right, transparent, rgba(255,255,255,0.8) 40%, $fondo2--claro 70%)

  .fondo_texto--oscuro
    background: linear-gradient(to right, transparent, rgba(0,0,0,0.8) 40%, $fondo2--oscuro 70%)

  .animeCont
    max-height: 500px

  .posActual
    position: absolute
    bottom: 15px
    left: 440px

  .cont
    padding: 10px 40px
    z-index: 4

  .imagen
    @extend %bordeRedondo-std
    float: left
    height: 500px
    width: 360px
    margin-right: 40px

  //
</style>
