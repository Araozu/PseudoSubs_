<!-- Incompleto -->
<template lang="pug">
  div.texto2.contenedor
    div.tarjeta.fondo1
      h1.titulo Sin perdida de calidad.
      br
      div.descr
        p.
          En PseudoSubs no sacrificamos nada. Hemos alcanzado el balance ideal para no perder
          nada<sup>*</sup> de calidad.
        p(style="font-size: small") * Sin perdida de calidad visible.
        p(style="font-size: small").
          ** Las perdidas mostradas aquí son mínimas, pues el programa compara exactamente pixel por pixel.
          No representa una gran perdida.
        p(style="font-size: small").
          *** Incluso si comparas pixel por pixel, las diferencias son inapreciables.
        br
        br
        p Hemos realizado pruebas con varias configuraciones y revisado pixel a pixel.<br>
        br
        br
        p.
          Las pruebas se realizaron con <a href="https://github.com/rsmbl/Resemble.js" target="blank">Resemble.js</a>.
        br
        br
        h2.subtitulo Original vs Soft - Irodzuku Sekai no Ashita Kara 13 03:15
        br
        br
        h2.subtitulo Original vs Hard 720p - Irodzuku Sekai no Ashita Kara 13 03:15
        br
        br
        h2.subtitulo Original vs Hard - Yakusoku no Neverland
        br
        br
        h2.subtitulo Original vs ligero - Yakusoku no Neverland

        img.res(src="../assets/img/Comparacion/Yaku-OvsLig.jpg")
        p.label Caso promedio
        br
        p.
          La versión ligera en 720p HEVC es un <b><i>0.31%</i></b> diferente al original.
          En el peor de los casos es hasta 1.52%, y en el mejor, 0%.
        br
        img.res(src="../assets/img/Comparacion/Yak_OvsLig_Peor.jpg")
        p.label.texto2 Peor caso - 1.52% de distorsión.
    //
</template>

<script lang="coffee">

  export default
    name: "Comparar"

</script>

<style scoped lang="sass">
  @import "../assets/sass/variables"

  .contenedor
    width: 90%
    margin: 30px auto
    div
      @extend %bordeRedondo-std

  .titulo
    padding: 15px 0
    text-align: center
    font:
      size: 2rem
      family: Muli, "Open Sans", sans-serif

  .subtitulo
    font:
      size: 1.5rem
      family: Muli, "Open Sans", sans-serif

  .descr
    padding: 20px 40px
    font-size: x-large

  .res
    width: 100%

  .label
    text-align: center
    font-size: large

</style>