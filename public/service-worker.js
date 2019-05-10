/* cod para manejar push */

self.addEventListener("push", e => {
    console.log(e);

    try {
        const datos = JSON.parse(e.data.text());

        const titulo = datos.titulo;
        const cuerpo = datos.cuerpo;
        const icono = datos.icono;
        const tipo = datos.tipo;

        e.waitUntil(
            self.registration.showNotification(titulo, {
                body: cuerpo,
                icon: icono
            })
        );
    } catch (err) {
        e.waitUntil(
            self.registration.showNotification("Ejemplo", {
                body: e.data.text(),
                icon: "https://pseudosubs.com/favicon.png"
            })
        );
    }

});