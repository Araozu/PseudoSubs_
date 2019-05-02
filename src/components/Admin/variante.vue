<template lang="pug">
    div.variante
        span.formato {{ variante.formato }}
        span.res {{ variante.res }}
        span.servidor {{ variante.servidor }}
        span.boton(@click="abrirLinks") Abrir
        div(v-if="linksAbiertos")
            br
            div.link
                form(@submit="crearEp($event)")
                    input(placeholder="numEp" type="number" min="0" max="1000" name="numEp")
                    input(placeholder="peso" name="peso")
                    input(placeholder="link" name="link")
                    br
                    input(type="submit" value="Crear")
            br
            div.link(v-for="link in links")
                span id: {{ link.ep_ID }} |
                span  Ep {{ link.num_ep }} |
                span  {{ link.visitas }} visitas |
                span  Peso: {{ link.peso }} |
                span(style="word-wrap: break-word")  link: {{ link.link }}
    //
</template>

<script lang="coffee">
    import YAML from "yaml"

    export default
        name: "variante"
        props:
            variante:
                type: Object
                required: true
        data: ->
            linksAbiertos: false
            links: []
        methods:
            abrirLinks: ->
                if this.links.length == 0
                    res = await fetch "#{this.$store.state.servidor}/eps/links/#{this.variante.opcion_ID}",
                        method: "POST"
                        headers:
                            "Content-Type": "application/x-www-form-urlencoded"
                    data = await res.text()
                    this.links = YAML.parse data
                this.linksAbiertos = !this.linksAbiertos
            crearEp: (ev) ->
                elem = ev.target
                ev.preventDefault()
                res = await fetch "#{this.$store.state.servidor}/eps/links/",
                    method: "POST"
                    headers:
                        "Content-Type": "application/x-www-form-urlencoded"
                    body: "params=" + YAML.stringify {
                        opcion_ID: this.variante.opcion_ID
                        num_ep: elem.numEp.value
                        visitas: 0
                        link: elem.link.value
                        peso: elem.peso.value
                    }
                data = JSON.parse(await res.text())
                if data.error == false
                    console.log "Creado con exito"
                    this.links.push {
                        ep_ID: "?"
                        num_EP: elem.numEp.value
                        visitas: 0
                        peso: elem.peso.value
                        link: elem.link.value
                    }
    #

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .variante
        margin: 10px

    .link
        margin-left: 25px

    .formato, .res, .servidor, .boton
        display: inline-block
        padding: 10px 15px
        border-radius: 5px
        margin: 10px 5px
        cursor: none
        color: white

    .formato
        background-color: #7b0000

    .res
        background-color: #000072

    .servidor
        background-color: #007200

    .boton
        background-color: $colorSecundario
        cursor: pointer

    //
</style>