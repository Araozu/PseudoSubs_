con = require("../index").con
hasher = require("sha-hasher")
enviarNotificacion = require("./enviarNotificacion").fun

export fun = (req, res) ->

    subscripcion = req.body.subscripcion
    hash = hasher.SHA256 subscripcion

    query = "INSERT INTO navegadores (navegador_hash, susbscripcion) VALUES (?, ?)"
    datos = [hash, subscripcion]
    con.query query, datos, (err) ->
        unless err?
            enviarNotificacion subscripcion, "Subscripción exitosa",
                "Ya puedes empezar a configurar las notificaciones de la página."
            .then (respNot) ->
                console.log JSON.stringify respNot
                res.status(201).json {
                    exito: true,
                    payload:
                        hash: hash
                }
            .catch (errro) ->
                console.log JSON.stringify errro
                res.status(400).json {exito: false, razon: "Error al ejecutar notificacion :c"}
        else
            res.status(400).json {exito: false, razon: err}
