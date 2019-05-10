<template lang="pug">
    div.fondo1.ntf
        div.titulo.texto1 Notificaciones
        br
        p.descr.texto1.
            Recibe notificaciones cuando salgan eps nuevos. Solo los animes que tú decidas
        br
        div
            router-link.mas(to="/ajustes") Aprender más
    //
</template>

<script lang="coffee">

    export default
        name: "notificaciones"
        data: ->
            NODE_ENV: process.env.NODE_ENV

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