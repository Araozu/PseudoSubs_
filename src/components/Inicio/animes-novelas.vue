<template lang="pug">
    div.texto1.fondo1.main
        router-link(to="/Anime")
            span.anime.tarjeta
                div.titulo.texto1 Anime
                div.titulo__descr.texto1 Ligero/MP4/MKV 720p/1080p 24fps/60fps
        router-link(to="/Novelas")
            span.novelas.tarjeta
                div.titulo.texto1 Novelas
                div.titulo__descr.texto1 Redistribuyendo legalmente lo ilegal.
        //
</template>

<script lang="coffee">

    export default
        name: "animes-novelas"

</script>

<style scoped lang="sass">
    .main
        margin: 50px 0

        .anime, .novelas
            width: 50%
            display: inline-block
            padding: 20px

        .titulo
            font:
                family: "Product Sans", Muli, "Open Sans", sans-serif
                size: 3rem
                weight: bold

        .titulo__descr
            opacity: 0.5
            font:
                family: Muli, "Open Sans", sans-serif
                size: x-large

    //
</style>