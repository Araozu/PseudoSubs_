<!-- TODO: Re-escribir para que la funcionalidad sea igual pero el codigo no sea asi de horrible.
 Barra Lateral. Responsivo hasta los 285px de ancho. -->
<template lang="pug">
    div.barra
        div.lateral.fondo2.ocultarEnMovil.barraOculta
            // div.botonOcultar(@click="ocultarBarraLateral()" :style="'display: ' + (largoVentana < 1201? 'none': 'block')").
                {{ $store.state.barraLateralOculta? '>>': '<<' }}

            router-link.linkImg(to="/" title="Ir al inicio")
                img.tarjeta(src="../assets/img/logo.svg")

            div.items.tarjeta.fondo1.texto2
                div.cambiarModo(@click="cambiarModoColor()")
                    i.material-icons.texto2.mostrarEnTablet.
                        {{ modoSiguiente === 'oscuro'? 'brightness_3': 'brightness_5' }}
                br
                hr
                br

                router-link(to="/")
                    i.material-icons.texto2.mostrarEnTablet(title="Nosotros") group
                br.mostrarEnTablet

                router-link(to="/")
                    i.material-icons.texto2.mostrarEnTablet(title="Ayuda") help
                br.mostrarEnTablet

                a(href="https://github.com/Araozu/PseudoSubs_" target="_blank" title="GitHub")
                    img.imgGitHub.texto2.mostrarEnTablet(
                        :src="modoSiguiente === 'oscuro'? '/img/github.svg': '/img/githubOsc.svg' ")
                br.mostrarEnTablet

                router-link(to="/cuenta")
                    i.material-icons.texto2.mostrarEnTablet settings

                div.ocultarEnTablet
                    br
                    hr
                    br
                    div.credito PseudoSubs
                    div.copy &copy; {{ new Date().getUTCFullYear() }} - araozu.dev
                    br
                    div.descr.
                        Traducciones Inglés|Japonés &rarr; español.<br>
                        <br>
                        Version 5.0.0

        div.inferior.texto2.fondo1.mostrarEnMovil
            span.tituloInf
                template(v-for="i in $store.state.rutaActual")
                    router-link.linkBarra(:to="i.ruta") {{ i.nombre }}
                    span  >
            div.links
                i.material-icons.texto2.mostrarEnTablet(@click="cambiarModoColor()").
                    {{ modoSiguiente === 'oscuro'? 'brightness_3': 'brightness_5' }}
                a.github(href="https://github.com/Araozu/PseudoSubs_" target="_blank" title="GitHub")
                    img.imgGitHub.texto2.mostrarEnTablet(
                        :src="modoSiguiente === 'oscuro'? '/img/github.svg': '/img/githubOsc.svg' ")
                router-link(to="")
                    i.material-icons.texto2.mostrarEnTablet settings
                //

</template>

<script lang="coffee">
    modoOscuro = ".texto1{color:#fff}.texto2{color:#d1d1d1}.texto1--negativo{color:#000}.fondo1{background-color:#101010}.fondo2{background-color:#000}.fondo1--negativo{background-color:#fff}"

    export default
        name: "barra-lateral"
        data: ->
            modoSiguiente: "oscuro"
            elemHtmlModoOscuro: document.getElementById "modoOscuro"
            largoVentana: window.innerWidth
        methods:
            cambiarModoColor: (color = @modoSiguiente) ->
                localStorage?.setItem "modoColor", color
                @$store.commit "cambiarModoColor", color
                resultado =
                    if color is "claro"
                        @modoSiguiente = "oscuro"
                        ""
                    else if color is "oscuro"
                        @modoSiguiente = "claro"
                        modoOscuro
                    else
                        console.log "¿Qué pasó aquí? Modo siguiente es #{@modoSiguiente}"
                        ""
                this.elemHtmlModoOscuro.innerHTML = resultado

        created: ->
            unless this.elemHtmlModoOscuro
                nuevoElem = document.createElement "style"
                nuevoElem.type = "text/css"
                nuevoElem.id = "modoOscuro"
                document.head.appendChild nuevoElem
                @elemHtmlModoOscuro = nuevoElem

            modoColor =
                if Storage? and localStorage.getItem "modoColor"
                    localStorage.getItem "modoColor"
                else if Storage?
                    localStorage.setItem "modoColor", "claro"
                    "claro"
                else
                    console.log "No hay soporte para LocalStorage"
                    "claro"

            @modoSiguiente = if modoColor is "claro" then "oscuro" else "claro"
            @cambiarModoColor modoColor
#

</script>

<style scoped lang="sass">
    @import "../assets/sass/variables"

    .linkBarra
        color: $colorPrincipal

    .barraOculta
        width: 100px !important

        .cambiarModo
            text-decoration: none

            &:hover
                background-color: inherit

        a
            text-decoration: none

        .linkImg
            width: 70px

        .ocultarEnTablet
            display: none

        .mostrarEnTablet
            display: initial

    .botonOcultar
        color: white
        position: absolute
        top: 50%
        right: -21px
        width: 44px
        height: 44px
        padding: 10px
        box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.2)
        border-radius: 22px
        background-color: $colorSecundario
        cursor: pointer

    .cambiarModo
        border-radius: 5px
        text-decoration: underline
        cursor: pointer
        transition: background-color 250ms ease-out

        &:hover
            background-color: $colorSecundario

    .material-icons
        font-size: 40px

    .imgGitHub
        width: 40px


    .lateral
        width: $largo
        height: 100%
        position: fixed
        box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.2)
        z-index: 10

    .linkImg
        @extend %margen-std
        display: inline-block
        width: $largoImg

        img
            @extend %bordeRedondo-std
            width: 100%

    .items
        @extend %margen-std
        @extend %bordeRedondo-std
        padding: 15px
        overflow: auto

        a::after
            content: ""
            display: block

    .credito
        color: #009c64
        font:
            family: Muli, "Open Sans", sans-serif
            size: xx-large
    //
    .copy
        color: #009c64
        font:
            family: Muli, "Open Sans", sans-serif

    .inferior
        position: fixed
        bottom: 0
        height: $bajoMovil
        width: 100%
        z-index: 10

        .tituloInf
            float: left
            color: #009c64
            font:
                family: Muli, "Open Sans", sans-serif
                size: x-large
            padding: 20px 10px

            &::after
                content: ""
                display: table
                clear: both

        .links
            padding: 15px
            height: 70px
            text-align: right
            width: auto

            i
                padding: 0 20px

    .ocultar
        display: none

    // Media queries para tablet
    @media only screen and (max-width: $tablet)
        .cambiarModo:hover
            background-color: inherit

        .ocultarEnTablet
            display: none

        .lateral
            width: $largoTablet

        .linkImg
            width: $largoImgTablet

    @media only screen and (min-width: $tablet + 1)
        .mostrarEnTablet
            display: none


    // Media queries para movil
    @media only screen and (max-width: $movil)
        .ocultarEnMovil
            display: none

    @media only screen and (min-width: $movil + 1)
        .mostrarEnMovil
            display: none

    // Ocultar link GitHub
    @media only screen and (max-width: 380px)
        .github
            display: none

        .inferior .links i
            padding: 0 8px

</style>