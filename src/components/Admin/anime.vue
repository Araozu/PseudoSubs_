<template lang="pug">
    div
        div.id {{ anime.anime_ID }}
        div.nombre {{ anime.titulo }}
        div.botones
            span.boton op
            span.boton ed
            span.boton(@click="verVariantes") links
        div(v-if="linksAbierto")
            div(v-for="variante in variantes")
                variante(:variante="variante")
    //
</template>

<script lang="coffee">
    import YAML from "yaml"
    import variante from "./variante.vue"

    export default
        name: "anime"
        props:
            anime:
                type: Object
                required: true
        data: ->
            linksAbierto: false
            variantes: []
        components:
            variante: variante
        methods:
            verVariantes: ->
                if this.variantes.length == 0
                    res = await fetch "#{this.$store.state.servidor}/eps/variantes/#{this.anime.anime_ID}",
                        method: "POST"
                        headers:
                            "Content-Type": "application/x-www-form-urlencoded"
                    data = await res.text()
                    this.variantes = YAML.parse data
                this.linksAbierto = !this.linksAbierto
    #

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .id
        float: left
        width: 5%

    .nombre
        float: left
        width: 20%
        overflow: hidden

    .botones
        float: left
        width: 75%

    .boton
        @extend %bordeRedondo-std
        display: inline-block
        padding: 10px 15px
        background-color: $colorPrincipal
        margin: 5px 15px
        cursor: pointer
        user-select: none
        color: white

    //
</style>