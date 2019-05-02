<template lang="pug">
    div.texto1
        div.tarjeta.fondo1.tituloC
            div.titulo Ajustes
            div.titulo__descr Configura la página a tu gusto.
        br
        div.row
            div.usuario
                div.usuario__cont.tarjeta.fondo1
                    div.usuario__titulo Mis Datos
                    br
                    template(v-if="$store.state.usuarioActual.googleID")
                        div.contImg
                            img.usuario__img(:src="$store.state.usuarioActual.fotoPerfil")
                        div.usuario__nombre Nombre: {{ $store.state.usuarioActual.nombre }}
                        div.usuario__correo Correo: {{ $store.state.usuarioActual.email }}
                        br
                        div.usuario__info.
                            Eso es todo. Puedes cambiar tu nombre y correo sin afectar tu cuenta de Google.
                    template(v-else)
                        div.
                            Inicia sesión* para poder recibir notificaciones en todos tus dispositivos.
                        br
                        boton-inicio-sesion
                        br
                        br
                        p.
                            * No necesitas iniciar sesión para tener notificaciones, solo para controlar
                            tus dispositivos.<br>
                            * Aun no disponible.
            div.notificaciones
                div.notificaciones__cont.tarjeta.fondo1
                    ajustes-notificaciones
        //
</template>

<script lang="coffee">
    import botonInicioSesion from "../components/boton-inicio-sesion.vue"
    import ajustesNotificaciones from "../components/Usuario/ajustes-notificaciones.vue"

    export default
        name: "Usuario"
        components:
            "boton-inicio-sesion": botonInicioSesion
            "ajustes-notificaciones": ajustesNotificaciones
    #

</script>

<style scoped lang="sass">
    @import "../assets/sass/variables"

    .tituloC
        padding: 50px

        .titulo
            font:
                family: "Product Sans", Muli, "Open Sans", sans-serif
                size: 4rem
                weight: bold

        .titulo__descr
            opacity: 0.5
            font:
                family: Muli, "Open Sans", sans-serif
                size: x-large

    .row
        margin: 0 40px

        ::after
            content: ""
            display: table
            clear: both

    .usuario, .notificaciones
        float: left

    .usuario
        width: 40%

    .usuario__titulo
        font:
            family: Muli, "Open Sans", sans-serif
            size: 2rem

    .contImg
        text-align: center

    .usuario__img
        width: 200px
        height: 200px

    .notificaciones
        width: 60%

    .usuario__cont, .notificaciones__cont
        @extend %bordeRedondo-std
        padding: 20px
        margin: 20px



    //
</style>