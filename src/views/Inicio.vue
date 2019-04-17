<template lang="pug">
    div.inicio
        ultimos-eps
        animes-novelas
        br
        caracteristicas
        y-notaras-la-diferencia
        //

</template>

<script lang="coffee">
    import ultimosEps from "../components/Inicio/ultimos-animes.vue"
    import caracteristicas from "../components/Inicio/caracteristicas.vue"
    import yNotarasLaDiferencia from "../components/Inicio/y-notaras-la-diferencia.vue"
    import animesNovelas from "../components/Inicio/animes-novelas.vue"

    export default
        name: "Inicio"
        components:
            caracteristicas: caracteristicas
            'y-notaras-la-diferencia': yNotarasLaDiferencia
            'ultimos-eps': ultimosEps
            'animes-novelas': animesNovelas
        created: ->
            @$store.commit "cambiarRutaActual", [{nombre: "PseudoSubs", ruta: "/"}]
#

</script>

<style scoped lang="sass">
    .inicio
        position: relative
        width: 100%
</style>