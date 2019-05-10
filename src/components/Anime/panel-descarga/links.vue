<template lang="pug">
    div(:id="`tarjeta${indice}`" :style="indice !== '1'? 'display: none' : ''")
        div.notf(v-if="enEmision")
            div.titulo(:style="'color: ' + color") Notificaciones
            br
            div.notf--ind(v-if="$store.state.navegador_hash !== '' || true")
                boton-nuevos-eps(:opcion="opcion.opcion_ID")
                span Avísame cuando salgan nuevos episodios.
            template(v-else)
                span Suscríbete&nbsp;
                router-link(to="/ajustes" :style="'color: ' + color") aquí
                span &nbsp;para recibir notificaciones cuando salgan episodios nuevos.
        br
        div.titulo(:style="'color: ' + color") Links
        p Todos los links se abren en una pestaña nueva.<br>
        span.link(v-for="(ep, num) in opcion.eps")
            br
            span Episodio {{ num }} ->
            a(
                :href="ep.link" target="_blank" :style="'color: ' + color"
                @mousedown.stop="incrementarContador(ep.ep_ID, $event)"
            ) {{ ep.peso }}
    //
</template>
<!-- TODO: arreglar funcionamiento de los links -->
<script lang="coffee">
    import botonNuevosEps from "./boton-nuevos-eps.vue"

    export default
        name: "links"
        components:
            "boton-nuevos-eps": botonNuevosEps
        props:
            indice:
                type: String
                required: true
            opcion:
                type: Object
                required: true
            color:
                type: String
                required: true
            enEmision:
                type: Boolean
                default: true
    #

</script>

<style scoped lang="sass">


    .notf--ind
        display: table

        span
            display: table-cell
            vertical-align: middle

    .titulo
        font:
            family: "Product Sans", Muli, "Open Sans", sans-serif
            size: xx-large
            weight: bold

    .link
        a
            font-weight: bold

    //
</style>