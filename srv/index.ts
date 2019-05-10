const mysql = require("mysql");

import obtenerAnimes from "./Anime/obtenerAnime"
import obtenerTodosAnimes from "./Anime/obtenerTodosAnimes"

export const webPush = require("web-push");
webPush.setVapidDetails(
    "mailto:tbyuyfcjjll@gmail.com",
    "BPA_MfechJ8EwyMC_5-GZsWFtjPCD6f2qAzW5ouxnMs73mGTsgtD47of0pO1rKtpyWiWKE8yZVHHzTGhLHbfVRI",
    "6dOp0WChG-fLFSo9hRnMUn5S1BVBm3KhK9r0m4L-GoA"
);

export const con = mysql.createConnection({
    host: "127.0.0.1",
    user: "pseubntq_araozu",
    password: "@Xsakah4b",
    database: "pseubntq_pseudosubs",
    multipleStatements: true
});
con.connect(err => {
    if (err) {
        console.error("Error al conectarse a la base de datos :c\n" + err);
    } else {
        console.log("Exito al conectarse a la base de datos :D");
    }
});

export const fun = app => {
    const bodyParser = require("body-parser");
    app.use(bodyParser.urlencoded({ extended: true }));
    // app.use(bodyParser.json);

    app.post("/anime/:id", obtenerAnimes);
    app.post("/anime", obtenerTodosAnimes);

    app.post("/u/validar", require("./Usuarios/ValidarUsuario").fun);

    app.post("/n/registrar", require("./Notificaciones/RegistrarSubcripcion").fun);
    app.post("/n/subscrAnimes", require("./Notificaciones/obtenerSubscripcionAnimes").fun);
    app.post("/n/subscribir/", require("./Notificaciones/suscribir").fun);
    app.post("/n/desubscribir/", require("./Notificaciones/desuscribir").fun);

    app.post("/op/:anime_ID", require("./OP-ED/obtenerOP").fun);
    app.post("/ed/:anime_ID", require("./OP-ED/obtenerED").fun);

    app.post("/eps/links/", require("./Links/crearLinks").fun);

    /**
     * Rutas Legacy :c */

    app.post('/links', require('./LinksAnimes/obtenerLinks').obtenerLinks);
    app.put('/links', require('./LinksAnimes/modificarLink').modificarLinks);

    app.post('/eps/variantes/:anime_ID', require('./Admin/Eps/obtenerVariantes').obtenerVariantes);
    app.put('/eps/variantes/', require('./Admin/Eps/crearVariante').crearVariante);
    app.put('/eps/mensaje/', require('./Admin/Eps/cambiarMensaje').cambiarMensaje);
    app.post('/eps/links/:opcion_ID', require('./Admin/Eps/obtenerLinks').obtenerLinks);

    app.post('/estadisticas', require('./Admin/Eps/estadisticas').estadisticas);

    // Fin

    /*
    * Claves VAPID
    * Publica: BPA_MfechJ8EwyMC_5-GZsWFtjPCD6f2qAzW5ouxnMs73mGTsgtD47of0pO1rKtpyWiWKE8yZVHHzTGhLHbfVRI
    * Privada: 6dOp0WChG-fLFSo9hRnMUn5S1BVBm3KhK9r0m4L-GoA
    * */

};

export default (app, http) => {
    fun(app);
}
