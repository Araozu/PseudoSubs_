<template lang="pug">
    div
        div.panel.tarjeta(v-if="datosCorrectos")
            div.panel__titulo(:style="'background-color: ' + color")
                p Descarga aquí
                p.sigEp(v-if="sigEp >= 0") Siguiente: Episodio {{ sigEp }}
                div.panel__titulo__variantes
                    variante(
                        v-for="(opcion, indice) in datos"
                        :indice="indice" :opcion="opcion" :funCambiar="cambiarDescripcionDescarga"
                    )
            div.panel__descripcion.fondo1
                links(
                    v-for="(opcion, indice) in datos"
                    :opcion="opcion" :indice="indice" :color="color" :enEmision="sigEp >= 0"
                )

        div(v-else) Recuperando los eps del servidor...
    //
</template>

<script lang="coffee">
    import YAML from "yaml"
    import variante from "./variante.vue"
    import links from "./links.vue"

    export default
        name: "panelDeDescarga",
        components:
            links: links
            variante: variante
        data: ->
            posActual: '1',
            sigEp: -1
            datos: {},
            datosCorrectos: false,
            mostrarSpinnerParaCargaDeEps: false
        props:
            animeid:
                type: Number,
                required: true
            color:
                type: String,
                required: true
            cambiarAviso:
                type: Function,
                required: true
        computed:
            eps: -> @$store.state.episodios
            epsOpciones: -> @$store.state.episodios_opciones
            epsOpcionesMeta: -> @$store.state.episodios_opciones_meta
        methods:
            cambiarDescripcionDescarga: (idDestino) ->
                quitarClase = (nombre, nombreClase) =>
                    posInicial = nombre.indexOf nombreClase
                    if posInicial != -1
                        nombre.substring(0, posInicial - 1)
                    else
                        nombre

                elemAnterior = document.getElementById "tarjeta#{this.posActual}"
                elemNuevo = document.getElementById "tarjeta#{idDestino}"

                opcionAnterior = document.getElementById "opcion#{this.posActual}"
                opcionNueva = document.getElementById "opcion#{idDestino}"

                if elemNuevo && elemAnterior && opcionAnterior && opcionNueva
                    this.posActual = idDestino

                    elemAnterior.style.display = "none"
                    opcionAnterior.style.backgroundColor = "transparent"
                    opcionAnterior.className =
                        quitarClase opcionNueva.className, "panel__titulo__variantes__variante--activa"

                    elemNuevo.style.display = "block"
                    opcionNueva.style.backgroundColor = opcionNueva.getAttribute "color-min"
                    opcionNueva.className += " panel__titulo__variantes__variante--activa"

                else
                    console.log "Woah, elemNuevo && elemAnterior && opcionAnterior && opcionNueva no se cumple...\n" +
                        elemNuevo + " " + elemAnterior + " " + opcionAnterior + " " + opcionNueva

            incrementarContador: (ep_ID, evento) ->
                xhr = new XMLHttpRequest();
                xhr.open "PUT", "#{this.$store.state.servidor}/links"
                xhr.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
                xhr.onload = ->
                    console.log xhr.responseText
                xhr.send "ep_ID=#{ep_ID}"

            actualizarOpciones: () ->
                vm = this
                eps = @eps
                epsOpciones = @epsOpciones
                epsOpcionesMeta = @epsOpcionesMeta
                animeId = @animeid
                if epsOpcionesMeta.length > 0
                    opcionMeta = epsOpcionesMeta.find (x) => x.anime_id == animeId
                    if opcionMeta?
                        opciones = epsOpciones.filter (x) => x.links_id == opcionMeta.links_id

                        vm.mostrarSpinnerParaCargaDeEps = false
                        vm.datos = opciones.map (opcion) =>
                            episodios = eps.filter (ep) => ep.opcion_id == opcion.opcion_id
                            { eps: episodios, opcion... }

                        vm.datosCorrectos = true
                        vm.cambiarAviso(opcionMeta.aviso)
                    else
                        vm.mostrarSpinnerParaCargaDeEps = false
                else
                    vm.mostrarSpinnerParaCargaDeEps = false

        created: ->
            vm = this
            intervalo = setInterval (=>
                if vm.epsOpciones.length > 0 && vm.epsOpcionesMeta.length > 0 && vm.eps.length > 0
                    clearInterval intervalo
                    vm.actualizarOpciones()
            ), 250


#
</script>

<style scoped lang="sass">
    @import "../../../assets/sass/variables"

    .aviso
        padding: 12px

    .icono-pequeno
        font-size: 15px
        padding: 0 5px
        cursor: default

    .panel__titulo
        border-radius: 10px 10px 0 0
        font:
            family: Muli, "Open Sans", sans-serif
            size: xx-large
            weight: bold
        color: white
        text-align: center

    .sigEp
        font-size: large

    .panel__titulo__variantes
        text-align: left

    .panel__titulo__variantes__variante--activa
        font-weight: bold
        text-decoration: underline

    .panel__descripcion
        padding: 25px 15px
        border-radius: 0 0 10px 10px

    .panel
        border-radius: 3px
</style>