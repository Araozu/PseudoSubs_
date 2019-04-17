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
            @$store.commit "cambiarTituloAnime", "Anime"
            @$store.commit "cambiarTxtAdicionalAnime", "Comprimido sin perder 1 solo pixel."
            @$store.commit "cambiarEstadoImgAnime", false
            @$store.commit "cambiarRutaActual", [
                {nombre: "PS", ruta: "/"},
                {nombre: "Anime", ruta: "/Anime/"},
            ]
    #

</script>

<style scoped lang="sass">
    .animes::after
        content: ""
        display: table
        clear: both
</style>