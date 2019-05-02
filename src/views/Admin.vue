<template lang="pug">
    div.texto1
        div.titulo.fondo1 Administracion
        br
        div Animes
            lista-anime
    //
</template>

<script lang="coffee">
    import listaAnime from "../components/Admin/lista-animes.vue"

    export default
        name: "Admin"
        components:
            "lista-anime": listaAnime
        created: ->
            unless this.$route.query.p == "xsakah4b"
                this.$router.push "/"
    #

</script>

<style scoped lang="sass">

    .titulo
        padding: 50px
        font:
            family: "Product Sans", "Open Sans", sans-serif
            size: 3rem

    //
</style>