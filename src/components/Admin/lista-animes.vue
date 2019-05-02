<template lang="pug">
    div.lista
        div
            anime.row(v-for="anime in animes" :anime="anime")
    //
</template>

<script lang="coffee">
    import anime from "./anime.vue"

    export default
        name: "lista-animes"
        components:
            anime: anime
        data: ->
            animes: this.$store.state.animes
            linksAbierto: false
    #

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .row::after
        content: ""
        display: table
        clear: both



    .lista
        margin: 50px


    //
</style>