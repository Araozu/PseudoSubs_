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
            vm = this
            do =>
                resTxt = await fetch "#{@$store.state.servidor}/data/animes.json"
                resultado = await resTxt.json()
                vm.$store.commit "establecerAnime", resultado

            do =>
                epsRaw = await fetch "#{@$store.state.servidor}/data/episodios.json"
                eps = await epsRaw.json()
                vm.$store.commit "establecerEpisodios", eps

            do =>
                epsOpcRaw = await fetch "#{@$store.state.servidor}/data/episodios_opciones.json"
                epsOpc = await epsOpcRaw.json()
                vm.$store.commit "establecerEpisodiosOpciones", epsOpc

            do =>
                epsOpcMetaRaw = await fetch "#{@$store.state.servidor}/data/episodios_opciones_meta.json"
                epsOpcMeta = await epsOpcMetaRaw.json()
                vm.$store.commit "establecerEpisodiosOpcionesMeta", epsOpcMeta



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