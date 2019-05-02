<template lang="pug">
    div.fondo1.ntf
        div.titulo.texto1 Notificaciones
        br
        p.descr.texto1.
            Inicia sesión con Google y recibe notificaciones cuando salgan eps nuevos.
            Solo los animes que tú decidas.<br>
            <br>
            Muy pronto...
        br
        div(:class="(NODE_ENV === 'production')? 'pronto': ''")
            router-link.mas(to="/cuenta") Aprender más
            boton-inicio-sesion
    //
</template>

<script lang="coffee">
    import botonInicioSesion from "../boton-inicio-sesion.vue"

    export default
        name: "notificaciones"
        components:
            "boton-inicio-sesion": botonInicioSesion
        data: ->
            gSignInParams:
                client_id: "27783367584-1hms6h62heplhlvsaihl8vqs7ho3o2b7.apps.googleusercontent.com"
            NODE_ENV: process.env.NODE_ENV
        methods:
            alIniciarSesion: (googleUser) ->
                token = googleUser.getAuthResponse().id_token
                xhr = new XMLHttpRequest()
                xhr.open "POST", "#{this.$store.state.servidor}/u/validar"
                xhr.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
                xhr.onload = ->
                    console.log xhr.responseText
                xhr.send "idToken=#{token}"
    #

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .pronto
        filter: opacity(15%)

    .ntf
        padding: 50px

    .descr
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: x-large
        opacity: 0.75


    .titulo
        font:
            size: 3rem
            family: "Product Sans", "Open Sans", sans-serif

    .mas
        padding: 10px 20px
        display: inline-block
        border-radius: 3px
        color: white
        cursor: pointer
        text-decoration: none
        margin: 0 10px
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: 1.3rem
        background-color: $colorPrincipal
        box-shadow: 0 3px 0 #00844c

    //

</style>