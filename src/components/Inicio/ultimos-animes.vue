<template lang="pug">
    div.texto2.fondo1.tarjeta
        div.anime(v-if="!errorAnimesNoEncontrados")
            div.fondo_1(:style="'background-color: ' + anime.color")
            div.fondo_texto(:class="'fondo_texto--' + $store.state.modoColor")
            div.cont
                router-link(:to="anime.link")
                    div.titulo {{ anime.titulo }}

                router-link(:to="anime.link")
                    div.imgCont
                        img.imagen.tarjeta(:src="anime.imgUrl")
                div.animeCont
                    div.descr {{ anime.descripcion }}
                    br
                    div.eps {{ anime.eps === 0? '?': anime.eps }} episodios.
                    br
                    div.estudio Estudio: {{ anime.estudio }}
                    br
                    div.emision {{ anime.diaDeEmision? 'Nuevo ep los ' + anime.diaDeEmision : '' }}
                    br
                div.posActual
                    span.boton.fondo1.texto1(@click="cambiarAnime('ant')") &larr; ant
                    span.posicion  {{ animeActual }} de {{ numAnimesRecientes }}
                    span.boton.fondo1.texto1(@click="cambiarAnime('sig')") sig &rarr;
        div(v-else) Error. No hay animes que mostrar. Revisa tu conexión a internet.
        //

</template>

<script lang="coffee">

    DEV = process.env.NODE_ENV == "development"

    export default
        name: "ultimos-eps"
        data: ->
            numAnimesRecientes: 5
            animeActual: 0
            anime: {}
            intervalo: {}
            cuentaAtrasCambio: {}
            primeraCarga: true
        computed:
            ultimosAnimes: ->
                animes = @$store.state.animes
                contador = 0
                resultado =
                    for _anime in animes when contador < @numAnimesRecientes
                        contador = contador + 1
                        _anime
            errorAnimesNoEncontrados: ->
                if @$store.state.animes[0]?
                    if @primeraCarga

                        @anime = @obtenerSigAnime()
                        @establecerIntervalo()
                        @primeraCarga = false
                    false
                else
                    true
        methods:
            obtenerSigAnime: ->
                if @animeActual is @numAnimesRecientes
                    @animeActual = 1
                else
                    @animeActual++
                @ultimosAnimes[@animeActual - 1]
            obtenerAntAnime: ->
                if @animeActual is 1
                    @animeActual = @numAnimesRecientes
                else
                    @animeActual--
                @ultimosAnimes[@animeActual - 1]
            cambiarAnime: (modo) ->
                _ = this
                clearInterval @intervalo
                clearTimeout @cuentaAtrasCambio
                @anime =
                    if modo is "sig"
                        @obtenerSigAnime()
                    else
                        @obtenerAntAnime()
                @cuentaAtrasCambio = setTimeout (() ->
                    _.establecerIntervalo()
                ), 5000
            establecerIntervalo: ->
                _ = this
                @intervalo = setInterval (() ->
                    _.anime = _.obtenerSigAnime()
                ), 5000
        beforeDestroy: ->
            clearInterval @intervalo
#

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .anime
        transition: background-color 250ms ease-out
        height: 580px
        width: 100%
        position: relative

    .titulo
        font:
            family: Muli, "Open Sans", sans-serif
            size: xx-large
        color: white
        padding-bottom: 10px
        height: 54px
        // position: relative
        // width: 500px
        overflow: visible

    .fondo_1, .fondo_texto, .cont
        position: absolute
        width: 100%
        height: 580px

    .fondo_1
        z-index: 1
        transition: background-color 500ms

    .fondo_texto
        z-index: 3

    .fondo_texto--claro
        background: linear-gradient(to right, transparent, rgba(255, 255, 255, 0.8) 40%, $fondo2--claro 70%)

    .fondo_texto--oscuro
        background: linear-gradient(to right, transparent, rgba(0, 0, 0, 0.8) 40%, $fondo2--oscuro 70%)

    .animeCont
        max-height: 500px

    .posActual
        position: absolute
        bottom: 15px
        left: 440px

        .boton
            @extend %bordeRedondo-std
            user-select: none
            display: inline-block
            padding: 5px 10px
            margin: 0 10px
            cursor: pointer

    .cont
        padding: 10px 40px
        z-index: 4

        a
            text-decoration: none

    .imgCont
        float: left
        display: inline-block
        text-align: center

    .imagen
        @extend %bordeRedondo-std
        height: 500px
        width: 360px
        margin-right: 40px

    @media only screen and (max-width: 900px)
        .animeCont
            display: none

        .posActual
            display: none

        .imgCont
            float: none
            display: block

    @media only screen and (max-width: 420px)
        .imagen
            height: auto
            width: 100%

    //
</style>