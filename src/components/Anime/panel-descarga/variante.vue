<template lang="pug">
    span
        div.titulo(
            :style="indice === '1'? `background-color: ${opcion.color}` : ''"
            @click="funCambiar(indice)" :color-min="opcion.color"
            :id="`opcion${indice}`"
        ).
            {{ opcion.formato }} {{ opcion.res }}<br>{{ opcion.servidor }}
    //
</template>

<script lang="coffee">

    export default
        name: "variante"
        props:
            indice:
                type: Number
                required: true
            opcion:
                type: Object
                required: true
            funCambiar:
                type: Function,
                required: true
    #

</script>

<style scoped lang="sass">

    .titulo
        padding: 10px 40px
        user-select: none
        cursor: pointer
        display: inline-block
        text-align: center
        font:
            size: large
            weight: normal
            family: Muli, "Open Sans", sans-serif

    //
</style>