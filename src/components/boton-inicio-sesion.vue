<template lang="pug">
    span
        g-signin-button(:params="gSignInParams" @success="alIniciarSesion"
            v-if="!$store.state.usuarioActual.googleID") Inicia sesión con Google
        div.g-signin-button(v-else) Iniciaste sesión como {{ $store.state.usuarioActual.nombre }}
    //
</template>

<script lang="coffee">
    import YAML from "yaml"

    export default
        name: "boton-inicio-sesion"
        data: ->
            gSignInParams:
                client_id: "27783367584-1hms6h62heplhlvsaihl8vqs7ho3o2b7.apps.googleusercontent.com"
        methods:
            alIniciarSesion: (googleUser) ->
                vm = this
                token = googleUser.getAuthResponse().id_token
                xhr = new XMLHttpRequest()
                xhr.open "POST", "#{this.$store.state.servidor}/u/validar"
                xhr.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
                xhr.onload = ->
                    res = YAML.parse xhr.responseText
                    if res.exito
                        vm.$store.commit "cambiarUsuarioActual", res.payload
                    else
                        console.log xhr.responseText
                        alert "Error al iniciar sesion."

                xhr.send "idToken=#{token}"
    #

</script>

<style scoped lang="sass">

    .g-signin-button
        padding: 10px 20px
        display: inline-block
        border-radius: 3px
        color: white
        cursor: pointer
        text-decoration: none
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: 1.3rem
        background-color: #3c82f7
        box-shadow: 0 3px 0 #0f69ff

    //
</style>