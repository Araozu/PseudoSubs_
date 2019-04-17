<template lang="pug">
    div.texto1 Error 404. Esta página no existe (aun).
</template>

<script lang="coffee">

    export default
        name: "Error404"
        created: ->
            @$store.commit "cambiarRutaActual", ["Inicio", "404"]
    #

</script>

<style scoped lang="sass">

</style>