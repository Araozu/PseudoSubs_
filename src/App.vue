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
    import YAML from "yaml"

    DEV = process.env.NODE_ENV == "development"

    export default
        name: "App"
        data: ->
            largoVentana: window.innerWidth
        components:
            'barra-lateral': barraLateral
        created: ->
            store = @$store
            fetch("#{this.$store.state.servidor}/anime", {
                method: "POST"
                headers:
                    "Content-Type": "application/x-www-form-urlencoded"
            })
                .then (x) -> x.text()
                .then (res) ->
                    # if DEV then console.log res
                    resultado = YAML.parse res

                    if resultado.exito
                        store.commit "establecerAnime", resultado.payload
                    else
                        console.log "Error al obtener los animes.\n#{res}"
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