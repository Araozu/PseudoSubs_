<template lang="pug">
  div.texto1
    div.tarjeta.fondo1.tituloC
      router-link.titulo.texto1(to="/Anime") Animes
      br
      div.titulo__descr {{ $store.state.txtAdicionalAnime }}
    router-view
  //
</template>

<script lang="coffee">

  export default
    name: "AnimeList"
    #

</script>

<style scoped lang="sass">

  .tituloC
    padding: 50px

    .titulo
      font:
        family: "Product Sans", Muli, "Open Sans", sans-serif
        size: 4rem
        weight: bold
      text-decoration: none

    .titulo__descr
      opacity: 0.5
      font:
        family: Muli, "Open Sans", sans-serif
        size: x-large


  .animes::after
    content: ""
    display: table
    clear: both

  //

</style>