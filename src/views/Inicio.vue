<template lang="pug">
    div.inicio
        ultimos-eps
        animes-novelas
        // notificaciones
        br
        caracteristicas
        y-notaras-la-diferencia
    //
</template>

<script lang="coffee">
    import ultimosEps from "../components/Inicio/ultimos-eps.vue"
    import caracteristicas from "../components/Inicio/caracteristicas.vue"
    import yNotarasLaDiferencia from "../components/Inicio/y-notaras-la-diferencia.vue"
    import animesNovelas from "../components/Inicio/animes-novelas.vue"
    import notificaciones from "../components/Inicio/notificaciones.vue"

    export default
        name: "Inicio"
        components: {
            caracteristicas
            yNotarasLaDiferencia
            ultimosEps
            animesNovelas
            notificaciones
        }
        created: ->
            @$store.commit "cambiarRutaActual", [{nombre: "PseudoSubs", ruta: "/"}]
#

</script>

<style scoped lang="sass">
    .inicio
        position: relative
        width: 100%
</style>