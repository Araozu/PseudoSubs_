<template lang="pug">
  div.inicio
    ultimos-eps
    caracteristicas
    y-notaras-la-diferencia
    //

</template>

<script lang="coffee">
  import ultimosEps from "../components/Inicio/ultimos-animes.vue"
  import caracteristicas from "../components/Inicio/caracteristicas.vue"
  import yNotarasLaDiferencia from "../components/Inicio/y-notaras-la-diferencia.vue"

  export default
    name: "Inicio"
    components:
      caracteristicas: caracteristicas
      'y-notaras-la-diferencia': yNotarasLaDiferencia
      'ultimos-eps': ultimosEps


</script>

<style scoped lang="sass">
  .inicio
    position: relative
    width: 100%
</style>