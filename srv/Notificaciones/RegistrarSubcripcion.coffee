con = require("../index").con

export fun = (req, res) ->

    google_ID = req.body.google_ID
    subscripcion = req.body.subscripcion

    query = "INSERT INTO navegadores (google_ID, animesSuscritos, susbscripcion) VALUES (?, ?, ?); SELECT LAST_INSERT_ID()"
    datos = [google_ID, subscripcion, "{}"]
    con.query query, datos, (err, respuesta) ->
        unless err?
            res.status(201).json {exito: true, payload: idInsertado: respuesta[1][0]}
        else
            res.status(400).json {exito: false, razon: err}
