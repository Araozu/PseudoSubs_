<template lang="pug">
  div.anime
    div.cont.fondo1.tarjeta
      router-link.titulo.texto1(:to="anime.link") {{ anime.titulo }}
      br
      router-link(:to="anime.link")
        img.imagen(:src="anime.imgUrl")
  //
</template>

<script lang="coffee">

  export default
    name: "anime"
    props:
      anime:
        type: Object
        required: true
    #

</script>

<style scoped lang="sass">
  @import "../../assets/sass/variables"

  .anime
    width: 50%
    float: left
    padding: 20px

  .cont
    @extend %bordeRedondo-std
    padding: 20px
    height: 500px

  .titulo
    display: inline-block
    font:
      family: Muli, "Open Sans", sans-serif
      size: xx-large
    padding-bottom: 20px
    text-decoration: none

  .imagen
    height: 400px

  //
</style>