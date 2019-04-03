<template lang="pug">
  div.animes
    anime-item(v-for="anime in $store.state.animes" :anime="anime")
    //
</template>

<script lang="coffee">
  import animeItem from "./anime.vue"

  export default
    name: "lista-animes"
    components:
      'anime-item': animeItem
    created: ->
      @$store.commit "cambiarTxtAdicionalAnime", "Comprimido sin perder 1 solo pixel."
    #
</script>

<style scoped lang="sass">
  .animes::after
    content: ""
    display: table
    clear: both
</style>