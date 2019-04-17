<template lang="pug">
    div.caracs.texto1--negativo
        div.motto.fondo1--negativo.texto1--negativo Vuelve a<br><b>disfrutar</b><br>del anime
        div.caracsCont
            div.titulo Sin publicidad
            div.descripcion.
                Encuentra lo que buscas, y descárgalo. No tendrás que cerrar ningún pop-up, evitar
                banners, o esperar 5 segundos.<br>
                <br>
                Aunque el Hosting, Dominio, y Almacenamiento no son gratis, PseudoSubs es libre de anuncios.
                Desde siempre, y para siempre.
            div.titulo Minimalista
            div.descripcion.
                Una página intuitiva, facil de usar.<br>
                <br>
                Anime con karaokes mínimos, si no te gustan, puedes ignorarlos.<br>
                <br>
                Fuentes y colores fáciles de leer.
            div.titulo Instantaneo
            div.descripcion.
                Navega por la página de forma instantanea, sin tiempos de carga.<br>
                <br>
                Utilizamos lo último en tecnología para brindarte una experiencia
                <b>inigualable</b>. ¡Si encuentras una página más rápida te devolvemos tu dinero!
            div.titulo No apto para puristas
            div.descripcion.
                ¿1.5 GB por episodio? No, gracias.<br>
                Con las últimas técnicas de compresión, reducimos 1GB a ~400MB en 1080px, y hasta 100MB en
                720p ligero. ¡Sin perdida de calidad!
        br
        br
        br
        br
        //
</template>

<script lang="coffee">

    export default
        name: "caracteristicas"

</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .caracs
        background: linear-gradient($colorPrincipal 40%, $colorSecundario)
        padding: 50px 25px
        margin-top: 100px
    //

    .motto
        display: inline-block
        padding: 20px
        position: relative
        top: -115px
        font:
            family: 'Product Sans', Muli, 'Open Sans', sans-serif
            size: x-large
        text-transform: uppercase

    .caracsCont
        color: white
        max-width: 540px
        padding: 0 50px

    .titulo
        font:
            family: Muli, "Open Sans", sans-serif
            size: 2.5rem
    //

    .descripcion
        padding: 50px 20px

</style>