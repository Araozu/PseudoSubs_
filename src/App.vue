<template lang="pug">
    div#app
        div.fondo.fondo2
        barra-lateral
        div.contenido.contenido--barraOculta
            router-view

</template>

<script lang="coffee">
    import "./assets/sass/global.sass"
    import "./assets/sass/modo-claro.sass"
    import barraLateral from "./components/barra-lateral.vue"

    export default
        name: "App"
        data: ->
            largoVentana: window.innerWidth
        components:
            'barra-lateral': barraLateral
        mounted: ->
            store = @$store
            resTxt =  await fetch "#{this.$store.state.servidor}/data/animes.json"
            resultado = await resTxt.json()
            store.commit "establecerAnime", resultado


#
</script>

<style lang="sass">
    @import "./assets/sass/variables"

    .fondo
        width: 100%
        height: 100%
        top: 0
        left: 0
        position: fixed
        z-index: 0

    .contenido
        width: 100%
        position: absolute
        padding-left: $largo
        z-index: 1

    .contenido--barraOculta
        padding-left: $largoTablet

    @media only screen and (max-width: $tablet)
        .contenido
            padding-left: $largoTablet

    @media only screen and (max-width: $movil)
        .contenido
            padding-left: $largoMovil
            padding-bottom: $bajoMovil

</style>