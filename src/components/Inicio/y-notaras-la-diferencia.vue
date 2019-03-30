<!-- Y notarás la diferencia. Responsivo hasta 285px de ancho. -->
<template lang="pug">
  div(style="position: absolute; width: 100%")
    div.contImg(:style="'min-height: ' + altoPantalla + 'px' ")
    div.otro(:style="'min-height: ' + altoPantalla + 'px' ")
      div.col
        div.fil
          div.titulo Cámbiate a PseudoSubs
          div.motto Y notarás la diferencia
          br
          br
          br
          br
          router-link.comparar(to="/comparar") Comparar pixel a pixel.
    //

</template>

<script lang="coffee">

  export default
    name: "y-notaras-la-diferencia"
    computed:
      altoPantalla: ->
        window.innerHeight ? document.documentElement.clientHeight ? document.body.clientHeight
      anchoPantalla: ->
        window.innerWidth ? document.documentElement.clientWidth ? document.body.clientWidth
    #

</script>

<style scoped lang="sass">
  @import "../../assets/sass/variables"

  .contImg
    display: inline-table
    width: 100%
    filter: brightness(0.4)


    background-image: url("../../assets/img/y_notaras_la_diferencia.jpg")
    background-attachment: fixed
    background-position: center
    background-repeat: no-repeat
    background-size: cover
    background-color: black

  .otro
    position: absolute
    top: 0
    left: 0
    z-index: 2
    width: 100%
    display: inline-table
    .col
      display: table-row
      .fil
        display: table-cell
        vertical-align: middle
        text-align: center
        color: white
        .titulo
          padding: 0 20px
          font:
            family: "Product Sans", Muli, "Open Sans", sans-serif
            weight: bold
            size: 4rem
        .comparar
          display: inline-block
          color: white
          text-decoration: none
          padding: 20px 30px
          background-color: $colorSecundario
          font-family: Muli, "Open Sans", sans-serif
          border-radius: 32px

  @media only screen and (max-width: $movil)
    .otro .col .fil .titulo
      font-size: 3rem

  @media only screen and (max-width: $movilDiminuto)
    .otro .col .fil .titulo
      font-size: 2.3rem
  //


</style>