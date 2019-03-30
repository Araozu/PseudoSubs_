import express from 'express';
import mysql from "mysql";

import obtenerAnimes from "./Anime/obtenerAnime"
import obtenerTodosAnimes from "./Anime/obtenerTodosAnimes"

export const con = mysql.createConnection({
    host: "127.0.0.1",
    user: "pseubntq_araozu",
    password: "@Xsakah4b",
    database: "pseubntq_pseudosubs"
});
con.connect(err => {
    if (err) {
        console.log("Error al conectarse a la base de datos :c\n" + err);
    } else {
        console.log("Exito al conectarse a la base de datos :D");
    }
});


export default (app, http) => {

    app.get("/anime/:id", obtenerAnimes);
    app.get("/anime", obtenerTodosAnimes);

}
