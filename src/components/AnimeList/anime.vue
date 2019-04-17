<template lang="pug">
    div.anime
        div.cont.fondo1.tarjeta
            router-link.titulo.texto1(:to="anime.link") {{ anime.titulo }}
            br
            router-link.link(:to="anime.link")
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
        width: 33%
        float: left
        padding: 20px

    .cont
        @extend %bordeRedondo-std
        padding: 20px

    .titulo
        display: inline-block
        font:
            family: Muli, "Open Sans", sans-serif
            size: xx-large
        margin-bottom: 20px
        text-decoration: none
        overflow: hidden
        white-space: nowrap
        width: 100%

    .imagen
        height: 400px

    .link
        display: inline-block
        width: 100%

    @media only screen and (max-width: 425px)

        .imagen
            width: 100%
            height: initial

    @media only screen and (max-width: 1200px)
        .anime
            width: 50%

    @media only screen and (max-width: 850px)
        .anime
            width: 100%

    //
</style>