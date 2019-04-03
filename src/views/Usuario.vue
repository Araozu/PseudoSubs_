<template lang="pug">
  div.texto1
    div.tarjeta.fondo1.tituloC
      div.titulo Ajustes
      div.titulo__descr Configura la página a tu gusto.
    br
    div.row
      div.usuario
        div.usuario__cont.tarjeta.fondo1
          div.usuario__titulo Mis Datos
          br
          img.usuario__img
          br
          div.usuario__nombre Nombre:
          div.usuario__correo Correo:
          br
          br
          div.usuario__info Estos son todos los datos que almacenamos de ti.
      div.notificaciones
        div.notificaciones__cont.tarjeta.fondo1 Notificaciones
    //
</template>

<script lang="coffee">

  export default
    name: "Usuario"

</script>

<style scoped lang="sass">
  @import "../assets/sass/variables"

  .tituloC
    padding: 50px

    .titulo
      font:
        family: "Product Sans", Muli, "Open Sans", sans-serif
        size: 4rem
        weight: bold

    .titulo__descr
      opacity: 0.5
      font:
        family: Muli, "Open Sans", sans-serif
        size: x-large

  .row
    margin: 0 40px
    ::after
      content: ""
      display: table
      clear: both

  .usuario, .notificaciones
    float: left

  .usuario
    width: 40%

  .usuario__titulo
    font:
      family: Muli, "Open Sans", sans-serif
      size: 2rem

  .usuario__img
    width: 200px
    height: 200px

  .notificaciones
    width: 60%

  .usuario__cont, .notificaciones__cont
    @extend %bordeRedondo-std
    padding: 20px
    margin: 20px

  //
</style>