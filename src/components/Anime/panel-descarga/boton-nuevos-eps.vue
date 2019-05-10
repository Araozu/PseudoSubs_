<template lang="pug">
    span#indicador(
        :style="estilos"
        @mouseenter="cambiarIcono()" @mouseleave="cambiarIcono()" @click="cambiarSubs()"
    )
        i.material-icons {{ botonActivo }}
    //
</template>

<script lang="coffee">
    import YAML from "yaml"

    colorPrim = "#009961"
    colorSec = "#ea486a"

    export default
        name: "boton-nuevos-eps"
        data: ->
            botonActivo: "" # check - clear
            animacion: ""
            animacionActiva: false
            color: ""
            suscrito: false
        props:
            opcion:
                type: Number
                required: true
        computed:
            estilos: -> "background-color: #{@color}; #{@animacion}"
        methods:
            cambiarIcono: ->
                unless @animacionActiva
                    @color =
                        if @color is colorSec then colorPrim else colorSec
                    @botonActivo =
                        if @botonActivo is "clear" then "check" else "clear"
            cambiarSubs: ->
                vm = this
                escala = 1
                vm.botonActivo = ""
                vm.animacionActiva = true
                vm.animacion = "transform: scale(#{0.3}, #{0.3})"
                animacion = setInterval (() ->
                    vm.animacion = "transform: scale(#{escala}, #{escala})"
                    escala = if escala is 1 then 0.3 else 1
                ), 500

                ruta = if @suscrito then "/n/desubscribir/" else "/n/subscribir/"

                res = await fetch ruta,
                    method: "POST"
                    headers:
                        "Content-Type": "application/x-www-form-urlencoded"
                    body: "opcion_ID=#{vm.opcion}&navegador_hash=#{vm.$store.state.navegador_hash}"
                respuesta = YAML.parse (await res.text())

                clearInterval animacion
                vm.animacion = ""
                vm.animacionActiva = false

                if respuesta.exito
                    vm.color = if vm.suscrito then colorSec else colorPrim
                    vm.botonActivo = if vm.suscrito then "clear" else "check"
                    if vm.suscrito
                        vm.$store.commit "eliminarSuscripcion", vm.opcion.toString()
                    else
                        vm.$store.commit "agregarSuscripcion", vm.opcion.toString()
                    vm.suscrito = !vm.suscrito
                else
                    alert "Hubo un error. Intentalo más tarde."
                    vm.color = if vm.suscrito then colorPrim else colorSec
                    vm.botonActivo = if vm.suscrito then "check" else "clear"

        created: ->
            suscrito = @$store.state.suscripciones[@opcion]?
            @suscrito = suscrito
            @color = if suscrito then colorPrim else colorSec
            @botonActivo = if suscrito then "checked" else "clear"


    #

</script>

<style scoped lang="sass">
    @import "../../../assets/sass/variables"

    #indicador
        display: inline-block
        width: 30px
        height: 30px
        background-color: $colorSecundario
        cursor: pointer
        margin: 0 10px
        border-radius: 15px
        transition: transform 500ms ease-in-out, background-color 500ms ease-out
        i
            color: white
            display: inline-block
            font-size: 24px
            padding: 3px

    //
</style>