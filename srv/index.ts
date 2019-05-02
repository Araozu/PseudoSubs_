const mysql = require("mysql");

import obtenerAnimes from "./Anime/obtenerAnime"
import obtenerTodosAnimes from "./Anime/obtenerTodosAnimes"

const webPush = require("web-push");

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

    webPush.setVapidDetails(
        "mailto:tbyuyfcjjll@gmail.com",
        "BPA_MfechJ8EwyMC_5-GZsWFtjPCD6f2qAzW5ouxnMs73mGTsgtD47of0pO1rKtpyWiWKE8yZVHHzTGhLHbfVRI",
        "6dOp0WChG-fLFSo9hRnMUn5S1BVBm3KhK9r0m4L-GoA"
    );

    app.post("/anime/:id", obtenerAnimes);
    app.post("/anime", obtenerTodosAnimes);

    app.post("/u/validar", require("./Usuarios/ValidarUsuario").fun);

    app.post("/n/registrar", require("./Notificaciones/RegistrarSubcripcion").fun);

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

    app.get("/n/test", (req, res) => {

        console.log("Deberia enviar push...");

        const payload = JSON.stringify({
            title: "Push de ejemplo :3"
        });

        const subscripcion = {"endpoint":"https://fcm.googleapis.com/fcm/send/e-n6_jndfTw:APA91bGQrFOYgICLRm-diDHwJnI4909TiQB_FqnffBd6PnyyoiB2rDqehn41KxXMyw5Upa0IqqDnlr58-n3B9w6WCN6xY-sluDk8fpya928S_NPgJyAvbhFERN3Gqqy36s4J4OVDz6qL","expirationTime":null,"keys":{"p256dh":"BGNpJIqpEkJPjVZcccV42TdXQi-G3nt6gVWXIMkRs69fWyQeLN7K-sEBs7ffyCiosJm4ApwY9_ol2Q57Zv5fg08","auth":"DzzSWijI-WfBPWrI6eGcuw"}};

        webPush.sendNotification(subscripcion, payload)
            .then(response => {
                console.log(JSON.stringify(response));
                res.status(200);
                res.send("Exito :D");
            })
            .catch(err => {
                console.log(JSON.stringify(err));
                res.status(400);
                res.send(`Error al enviar push :c\n${err}`);
            });

    });
};

export default (app, http) => {
    fun(app);
}
