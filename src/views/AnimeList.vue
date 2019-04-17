<template lang="pug">
    div.texto1.main
        div.imagenFondo.fondo1(:class="$store.state.mostrarImgAnime? clasesImg : ''" :style="estiloImg")
        div.fondo1.tituloC(:class="$store.state.mostrarImgAnime? clasesCont : ''")
            div.textos
                router-link.titulo.texto1(to="/Anime" :class="sombraLink") {{ $store.state.tituloAnime }}
                br
                div.titulo__descr.texto1 {{ $store.state.txtAdicionalAnime }}
        router-view
    //
</template>

<script lang="coffee">

    export default
        name: "AnimeList",
        computed:
            clasesImg: ->
                ["alto500", "imagenFondo--activo"]
            clasesCont: ->
                ["alto500", ("tituloC--activo--" + @$store.state.modoColor)]
            sombraLink: ->
                "tituloC--sombra--#{@$store.state.modoColor}"
            linkImg: -> "/img/PortadaAnimes/#{@$store.state.imgTituloAnime}.jpg"
            estiloImg: ->
                if @$store.state.mostrarImgAnime
                    "background: url('#{@linkImg}') no-repeat center; background-size: cover"
                else
                    ""
    #

</script>

<style scoped lang="sass">
    @import "../assets/sass/variables"

    .main
        position: relative
        height: 0

    .imagenFondo
        position: absolute
        height: 250px
        width: 100%

    .tituloC
        height: 250px
        position: relative

    .tituloC--sombra--claro
        text-shadow: 0 0 15px #c7c7c7

    .tituloC--sombra--oscuro
        text-shadow: 0 0 15px #484848

    .alto500
        height: 600px

    .imagenFondo--activo
        // background: no-repeat center

    .tituloC--activo--oscuro
        background: linear-gradient(rgba(0,0,0,0) 200px, $fondo2--oscuro)

    .tituloC--activo--claro
        background: linear-gradient(rgba(0,0,0,0) 200px, $fondo2--claro)

    .textos
        position: absolute
        bottom: 50px
        left: 50px

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

    @media only screen and (max-width: 425px)
        .titulo
            font-size: 3rem

        .alto500
            height: 350px

    //

</style>