<template lang="pug">
    div.texto1.contenedor
        div(v-if="estadoAnime === 0") Cargando...
        div(v-if="estadoAnime === -1") Error. Anime no encontrado
        div(v-if="estadoAnime === 1")
            // div.titulo {{ anime.titulo }} -> {{ anime.anime_ID }}
            // p {{ anime }}
            br
            br
            div.datos
                img.imagen.tarjeta(:src="anime.imgUrl")
                div.cont
                    div.tarjeta.fondo1
                        div.descripcion {{ anime.descripcion }}
                    br
                    div.datosAnimeCont
                        div.tarjeta.fondo1.mal
                            div.estudio Estudio: {{ anime.estudio }}
                            div.numEps Episodios: {{ anime.eps === 0? '?' : anime.eps }}
                            div.emision Emisión: {{ anime.alAire }}
                            div.temporada Temporada: {{ anime.temporada + " " + anime.anio }}
                            div.fuente Fuente: {{ anime.fuente }}
                            div.generos Generos: {{ anime.generos }}
                        div.tarjeta.fondo1.op-ed ops y eds aqui. En construcción.
                    br
                    panel-de-descarga(:animeid="anime.anime_ID" :color="anime.color")
            br
            //
</template>

<script lang="coffee">
    import panelDescarga from "./panel-descarga.vue"

    export default
        name: "Anime"
        components:
            'panel-de-descarga': panelDescarga
        data: ->
            anime: {}
            # -1 no encontrado, 0 cargando y 1 encontrado
            estadoAnime: 0
        created: ->
            _ = this
            animes = @$store.state.animes
            resultado = -1
            for anime in animes
                if anime.link is "/Anime/" + @$route.params.nombre
                    _.anime = anime
                    resultado = 1
                    break
            @estadoAnime = resultado
            if resultado is 1
                @$store.commit "cambiarTituloAnime", "#{anime.titulo}"
                @$store.commit "cambiarTxtAdicionalAnime", (if anime.comentario? then anime.comentario else "Sin comentarios.")
                @$store.commit "cambiarEstadoImgAnime", true
                @$store.commit "cambiarImgTituloAnime", @anime.titulo
            else
                @$store.commit "cambiarTxtAdicionalAnime", "?"

            @$store.commit "cambiarRutaActual", [
                {nombre: "PS", ruta: "/"},
                {nombre: "A", ruta: "/Anime/"},
                {nombre: "_", ruta: "#"}
            ]

    #

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .contenedor
        margin: 0 50px

    .datos::after, .datosAnimeCont::after
        content: ""
        display: table
        clear: both

    .imagen
        @extend %bordeRedondo-std
        position: sticky
        top: 10px
        float: left
        // height: 600px
        width: 25%
        display: inline-block

    .cont
        float: left
        display: inline-block
        padding-left: 40px
        width: 75%
        div.tarjeta
            @extend %bordeRedondo-std
            padding: 20px

    .mal
        width: 49%
        float: left

    .op-ed
        width: 49%
        float: right

    @media only screen and (max-width: 600px)
        .imagen, .cont
            width: 100%

        .imagen
            position: initial
            padding-bottom: 30px

        .cont
            padding: 0
            div.tarjeta
                padding: 15px

        .mal, .op-ed
            width: 100%

        .mal
            margin-bottom: 20px

        .contenedor
            margin: 0 5px
            padding-bottom: 70px

    //

</style>