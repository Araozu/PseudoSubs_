<template lang="pug">
    div.tarjeta.fondo1.op-ed
        div.op
            p(v-if="estadoOp === 0") Cargando OPs...
            p(v-else-if="estadoOp === -1") Error al obtener los ops.
            template(v-else)
                div.titulo OPs:
                div.cont(v-for="op in ops")
                    span.nombre {{ op.nombre }}
                    span &nbsp;&nbsp;por&nbsp;&nbsp;
                    span.nombre {{ op.artista }}
                    br
                    span.eps Eps {{ op.eps }} |&nbsp;
                    a(:href="obtenerLinkY(op.nombre, op.artista)" target="_blank"
                        :style="'color: ' + color") YouTube
        br
        div.ed
            p(v-if="estadoEd === 0") Cargando EDs...
            p(v-else-if="estadoEd === -1") Error al obtener los ops.
            template(v-else)
                div.titulo EDs:
                div.cont(v-for="ed in eds")
                    span.nombre {{ ed.nombre }}
                    span &nbsp;&nbsp;por&nbsp;&nbsp;
                    span.nombre {{ ed.artista }}
                    br
                    span.eps Eps {{ ed.eps }} |&nbsp;
                    a(:href="obtenerLinkY(ed.nombre, ed.artista)" target="_blank"
                        :style="'color: ' + color") YouTube
    //
</template>

<script lang="coffee">
    import YAML from "yaml"

    export default
        name: "op-ed"
        data: ->
            ops: []
            eds: []
            estadoOp: 0
            estadoEd: 0
        props:
            anime_ID:
                type: Number,
                required: true
            color:
                type: String
                required: true
        methods:
            obtenerLinkY: (nombre, artista) ->
                "https://www.youtube.com/results?search_query=" + (encodeURIComponent "#{nombre} - #{artista}")
        mounted: ->
            vm = this
            fetch "#{this.$store.state.servidor2}/op/#{this.anime_ID}"
                .then (res) ->
                    data = YAML.parse(await res.text())
                    vm.estadoOp =
                        if res.status == 200
                            vm.ops = data
                            1
                        else
                            console.error "Error recuperando OPs", data
                            -1
                .catch (err) -> console.log "Error :c #{err}"

            fetch "#{this.$store.state.servidor2}/ed/#{this.anime_ID}"
                .then (res) ->
                    data = YAML.parse(await res.text())
                    vm.estadoEd =
                        if res.status == 200
                            vm.eds = data
                            1
                        else
                            console.error "Error recuperando EDs", data
                            -1
                .catch (err) -> console.log "Error :c #{err}"
    #

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .titulo
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: xx-large

    .cont
        padding-left: 10px
        padding-bottom: 15px
        a
            color: $colorPrincipal

    .nombre
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: x-large

    .eps
        margin-left: 10px

    //
</style>