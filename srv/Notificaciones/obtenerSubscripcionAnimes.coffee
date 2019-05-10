con = require("../index").con
YAML = require("yaml")

# TODO: Cambiar para que use el navegador_ID y navegador_hash
export fun = (req, res) ->

    google_ID = req.body.google_ID
    navegador_ID = req.body.navegador_ID

    if google_ID? and navegador_ID?

        sql = "SELECT animesSuscritos FROM navegadores WHERE navegador_ID=? AND navegador_hash=?"
        datos = [navegador_ID, google_ID]
        con.query sql, datos, (err, respuesta) ->
            unless err?
                res.send YAML.stringify
                    exito: true
                    payload: respuesta[0]
                    error: {}
            else
                res.send YAML.stringify
                    exito: false
                    payload: {}
                    error:
                        razon: "Error al ejecutar consulta a la base de dtos."
                        ruta: "/Notificaciones/obtenerSubscripcionAnimes"
                        adicional: "sql: #{err.sql}\n#{err}"
    else
        res.send YAML.stringify
            exito: false
            payload: {}
            error:
                razon: "No se envió un id de usuario o un id de navegador"
                ruta: "/Notificaciones/obtenerSubscripcionAnimes"
                adicional: "id de usuario: #{google_ID}\nid de navegador: #{navegador_ID}"
