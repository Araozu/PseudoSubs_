<template lang="pug">
    div.texto1
        div.tarjeta.fondo1.tituloC
            div.titulo Ajustes
            div.titulo__descr Configura la página a tu gusto.
        br
        div.notificaciones
            div.notificaciones__cont.tarjeta.fondo1
                ajustes-notificaciones
        //
</template>

<script lang="coffee">
    import ajustesNotificaciones from "../components/Usuario/ajustes-notificaciones.vue"

    export default
        name: "Usuario"
        components:
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


    .usuario__cont, .notificaciones__cont
        @extend %bordeRedondo-std
        padding: 20px
        margin: 20px



    //
</style>