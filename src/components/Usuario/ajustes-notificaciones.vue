<template lang="pug">
    div
        div.titulo Notificaciones (No disponible)
        br
        template(v-if="notf && serviceWorkers")
            div.descr(v-if="estado === 0").
                Registra tu navegador siguiendo estos pasos:
            br
            div.uno
                span.num(:class="estadoNotificaciones === 'Permitido'? 'num--terminado': ''") 1
                span.paso Permitir notificaciones
                br
                div.opc(v-if="estadoNotificaciones !== 'Permitido'")
                    p Estado de las notificaciones: {{ estadoNotificaciones }}
                    br
                    button.boton(v-if="estadoNotificaciones === 'No preguntado'"
                        @click="pedirNotificaciones()") Permitir notificaciones
                    div(v-if="estadoNotificaciones === 'Denegado'").
                        Tienes que permitir las notificaciones en los ajustes de tu navegador.
            br
            div.dos
                span.num(:class="notificacionesProbadas? 'num--terminado': ''") 2
                span.paso Probar notificaciones
                br
                div.opc(v-if="estadoNotificaciones === 'Permitido' && !notificacionesProbadas")
                    p.
                        Aceptaste las notificaciones, pero aun es posible que tu navegador no las
                        soporte. Haz click en el siguiente boton para probarlas:
                    br
                    button.boton(@click="probarNotificacion") Probar
                    br
                    br
                    span Ingresa el numero secreto:
                    input(type="number" min="0" max="100" v-model="numIngresado")
            br
            div.tres
                span.num(:class="pushSuscrito? 'num--terminado': ''") 3
                span.paso Suscribirse a las notificaciones
                br
                div.opc(v-if="estadoNotificaciones === 'Permitido' && notificacionesProbadas && !pushSuscrito")
                    button.boton(@click="suscribirse()") Suscribirse
            div.fin(v-if="pushSuscrito")
                p Tu navegador está listo.
        template(v-else).
            Lo sentimos, tu navegador no soporta notificaciones. Actualiza tu navegador.
    //
</template>

<script lang="coffee">

    publicVapidKey = "BPA_MfechJ8EwyMC_5-GZsWFtjPCD6f2qAzW5ouxnMs73mGTsgtD47of0pO1rKtpyWiWKE8yZVHHzTGhLHbfVRI"

    urlBase64ToUint8Array = (base64String) ->
        padding = '='.repeat((4 - base64String.length % 4) % 4);
        base64 = (base64String + padding)
            .replace(/-/g, '+')
            .replace(/_/g, '/');

        rawData = window.atob(base64);
        outputArray = new Uint8Array(rawData.length);

        `
        for (let i = 0; i < rawData.length; ++i) {
            outputArray[i] = rawData.charCodeAt(i)
        }
        `

        outputArray

    export default
        name: "ajustes-notificaciones"
        data: ->
            estado: 0
            estadoNotf: Notification.permission
            notf: false
            serviceWorkers: false
            notificacionesProbadas: false
            pushSuscrito: false
            numAleatorio: Math.ceil Math.random() * 100
            numIngresado: 0
        watch:
            numIngresado: (n, v) ->
                if parseInt(n) is @numAleatorio
                    @notificacionesProbadas = true
        computed:
            estadoNotificaciones: ->
                switch @estadoNotf
                    when "default" then "No preguntado"
                    when "granted" then "Permitido"
                    when "denied" then "Denegado"
        methods:
            pedirNotificaciones: ->
                vm = this
                Notification.requestPermission().then((res) ->
                    vm.estadoNotf = res
                )
            probarNotificacion: ->
                vm = this
                navigator.serviceWorker.getRegistration()
                    .then (reg) ->
                        reg?.showNotification "El numero secreto es #{vm.numAleatorio}"
            suscribirse: ->
                vm = this
                navigator.serviceWorker.ready.then (reg) ->
                    try
                        subscripcion = await reg.pushManager.subscribe
                            userVisibleOnly: true
                            applicationServerKey: urlBase64ToUint8Array publicVapidKey

                        subsStr = JSON.stringify subscripcion
                        console.log subsStr
                        res = await fetch "#{vm.$store.state.servidor}/n/registrar", {
                            method: "POST"
                            body: "google_ID=#{vm.$store.state.usuarioActual.googleID}&subscripcion=#{subsStr}"
                            headers:
                                "Content-Type": "application/x-www-form-urlencoded"
                        }
                        jsonRespuesta = await res.json()
                        console.log jsonRespuesta
                        if res.ok
                            vm.pushSuscrito = true
                    catch e
                        console.error e

        mounted: ->
            @notf = window.Notification?
            @serviceWorkers = navigator.serviceWorker?
    #

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .titulo
        font:
            family: Muli, "Open Sans", sans-serif
            size: 2rem

    .num
        font:
            family: "Product Sans"
            weight: bold
            size: 1.5rem
        display: inline-block
        background-color: $colorSecundario
        height: 34px
        width: 34px
        text-align: center
        border-radius: 17px

    .num--terminado
        background-color: $colorPrincipal

    .paso
        margin-left: 10px
        font-family: "Product Sans", Muli, "Open Sans", sans-serif
        font-size: 1.5rem

    .boton
        padding: 10px 20px
        display: inline-block
        border: none
        border-radius: 3px
        color: white
        cursor: pointer
        text-decoration: none
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: 1.3rem
        background-color: $colorPrincipal
        box-shadow: 0 3px 0 #00844c

    .opc
        margin-left: 45px

    //
</style>