<template lang="pug">
    div.texto1.contenedor
        div(v-if="estadoAnime === 0") Cargando...
        div(v-if="estadoAnime === -1") Error. Anime no encontrado
        div(v-if="estadoAnime === 1")
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
                        op-ed(:anime_ID="anime.anime_id" :color="anime.color")
                    br
                    div.tarjeta.aviso(:style="colorBackground") {{ aviso }}
                    br
                    panel-de-descarga(:animeid="anime.anime_id" :color="anime.color"
                        :cambiar-aviso="cambiarAviso")
                    br
                    div.tarjeta.background__disqus
                        vue-disqus(shortname="www-pseudosubs-com" :identifier="nombreCortoAnime"
                            :url="'https://pseudosubs.com/Anime/' + nombreCortoAnime")
            br
            //
</template>

<script lang="coffee">
    import panelDescarga from "./panel-descarga/panel-descarga.vue"
    import opEd from "./op-ed.vue"
    import YAML from "yaml"

    export default
        name: "Anime"
        components:
            "panel-de-descarga": panelDescarga
            "op-ed": opEd
        data: ->
            anime: {}
            # -1 no encontrado, 0 cargando y 1 encontrado
            estadoAnime: 0
            aviso: ""
        computed:
            nombreCortoAnime: ->
                @anime.link?.substr(7)
            colorBackground: -> "background-color: #{@anime.color};"
        methods:
            cambiarAviso: (aviso) -> @aviso = aviso
        created: ->
            vm = this
            animes = @$store.state.animes
            resultado = -1
            console.log animes
            for anime in animes
                console.log "Param is #{@$route.params.nombre}"
                if anime.link is "/Anime/" + @$route.params.nombre
                    vm.anime = anime
                    resultado = 1
                    break
            vm.estadoAnime = resultado
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

    .background__disqus
        background-color: #101010
        padding: 15px

    .aviso
        text-align: center
        color: white
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: x-large

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