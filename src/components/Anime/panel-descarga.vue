<template>
    <div>
        <div class="panel tarjeta" v-if="datosCorrectos">
            <div class="panel__titulo" :style="'background-color: ' + color">
                Descarga aquí.<br>
                <div class="panel__titulo__variantes">
                    <template v-for="(opcion, indice) in datos">
                        <div class="panel__titulo__variantes__variante hoverable"
                             :style="indice === '1'? `background-color: ${opcion.color}` : ''"
                             v-on:click="cambiarDescripcionDescarga(indice)" :color-min="opcion.color"
                             :id="`opcion${indice}`">
                            {{ opcion.formato }} {{ opcion.res }}<br>{{ opcion.servidor }}
                        </div>
                    </template>
                </div>
            </div>
            <div class="panel__descripcion fondo1">

                <template v-for="(opcion, indice) in datos">
                    <div :id="`tarjeta${indice}`" :style="indice !== '1'? 'display: none' : ''">
                        <div class="panel__descripcion__titulo" :style="'color: ' + balancearColor">
                            Links<br>
                        </div>
                        Todos los links se abren en una pestaña nueva.<br>
                        <span v-for="(ep, num) in opcion.eps" class="panel__descripcion__link">
                          <br>
                          Episodio {{ num }} ->
                          <a :href="ep.link" target="_blank" :style="'color: ' + balancearColor"
                             @mousedown.stop="incrementarContador(ep.ep_ID, $event)">
                              {{ ep.peso }}
                          </a>
                        </span>
                    </div>
                </template>

            </div>
        </div>
        <div v-else>
            Recuperando los eps del servidor...
        </div>
    </div>
</template>

<script>
    import YAML from "yaml"

    const esModoOscuro = false;

    export default {
        name: "panelDeDescarga",
        data: function () {
            return {
                posActual: '1',
                datos: {},
                datosCorrectos: false,
                mostrarSpinnerParaCargaDeEps: false
            }
        },
        props: {
            animeid: {
                type: Number,
                required: true
            },
            color: {
                type: String,
                required: true
            },
            cambiarAviso: {
                type: Function,
                required: true
            }
        },
        computed: {
            balancearColor() {
                const color = this.color;

                const R = parseInt(color.substring(1, 3), 16);
                const G = parseInt(color.substring(3, 5), 16);
                const B = parseInt(color.substring(5, 7), 16);

                const limiteOscuridad = 60;
                if (esModoOscuro && R < limiteOscuridad && G < limiteOscuridad && B < limiteOscuridad) {
                    return `#${(255 - R).toString(16)}${(255 - G).toString(16)}${(255 - B).toString(16)}`;
                } else {
                    return color;
                }

            }
        },
        methods: {
            cambiarDescripcionDescarga(idDestino) {
                const quitarClase = (nombre, nombreClase) => {
                    const posInicial = nombre.indexOf(nombreClase);
                    if (posInicial !== -1)
                        return nombre.substring(0, posInicial - 1);
                    else
                        return nombre
                };

                const elemAnterior = document.getElementById(`tarjeta${this.posActual}`);
                const elemNuevo = document.getElementById(`tarjeta${idDestino}`);

                const opcionAnterior = document.getElementById(`opcion${this.posActual}`);
                const opcionNueva = document.getElementById(`opcion${idDestino}`);

                if (elemNuevo && elemAnterior && opcionAnterior && opcionNueva) {
                    this.posActual = idDestino;

                    elemAnterior.style.display = "none";
                    opcionAnterior.style.backgroundColor = "transparent";
                    opcionAnterior.className = quitarClase(opcionNueva.className, "panel__titulo__variantes__variante--activa");

                    elemNuevo.style.display = "block";
                    opcionNueva.style.backgroundColor = opcionNueva.getAttribute("color-min");
                    opcionNueva.className += " panel__titulo__variantes__variante--activa";

                } else {
                    console.log("Woah, elemNuevo && elemAnterior && opcionAnterior && opcionNueva no se cumple...\n" +
                        elemNuevo + " " + elemAnterior + " " + opcionAnterior + " " + opcionNueva);
                }
            },
            incrementarContador(ep_ID, evento) {

                const xhr = new XMLHttpRequest();
                xhr.open("PUT", `${this.$store.state.servidor}/links`);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onload = () => {
                    console.log(xhr.responseText);
                };
                xhr.send(`ep_ID=${ep_ID}`);

            }
        },
        created() {
            const xhr = new XMLHttpRequest();
            const vm = this;

            xhr.open("POST", `${this.$store.state.servidor}/links`);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onload = () => {
                try {
                    const data = YAML.parse(xhr.responseText);
                    if (data.exito) {
                        vm.datos = data.payload["opciones"];
                        vm.datosCorrectos = true;
                        vm.cambiarAviso(data.payload.aviso);
                    } else {
                        vm.mostrarSpinnerParaCargaDeEps = false;
                        console.log("Error al recibir los eps del anime. resp:\n" + xhr.responseText);
                    }
                } catch (e) {
                    vm.mostrarSpinnerParaCargaDeEps = false;
                    console.log("Error al recibir los eps del anime:\n" + e + "\n" + xhr.responseText);
                }


            };
            xhr.send(`animeID=${this.animeid}`);
        }

    }
</script>

<style scoped lang="sass">
    @import "../../assets/sass/variables"

    .aviso
        padding: 12px

    .icono-pequeno
        font-size: 15px
        padding: 0 5px
        cursor: default

    .panel__titulo
        border-radius: 10px 10px 0 0
        font:
            family: Muli, "Open Sans", sans-serif
            size: xx-large
            weight: bold
        color: white
        text-align: center

    .panel__titulo__variantes
        text-align: left

    .panel__titulo__variantes__variante
        padding: 10px 40px
        user-select: none
        cursor: pointer
        display: inline-block
        text-align: center
        font:
            size: large
            weight: normal

    .panel__titulo__variantes__variante--activa
        font-weight: bold
        text-decoration: underline

    .panel__descripcion
        padding: 25px 15px
        border-radius: 0 0 10px 10px

    .panel__descripcion__titulo
        font:
            family: Muli, "Open Sans", sans-serif
            size: x-large
            weight: bold

    .panel__descripcion__link
        a
            font-weight: bold

    .panel
        border-radius: 3px
</style>