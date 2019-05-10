con = require("../index").con
YAML = require("yaml")

export fun = (req, res) ->

    opcion_ID = req.body.opcion_ID
    navegador_hash = req.body.navegador_hash

    if opcion_ID? and navegador_hash?

        sql = "SELECT navegador_ID from navegadores WHERE navegador_hash=?"
        datos = [navegador_hash]

        con.query sql, datos, (err, respuesta) ->
            unless err?

                navegador_ID = respuesta[0]["navegador_ID"]
                sql2 = "DELETE FROM subscripciones WHERE navegador_ID=? AND opcion_ID=?"
                datos2 = [navegador_ID, opcion_ID]

                con.query sql2, datos2, (err) ->
                    unless err?
                        res.send YAML.stringify
                            exito: true
                            payload: {}
                            error: {}
                    else
                        res.send YAML.stringify
                            exito: false
                            payload: {}
                            error:
                                razon: "Error al ejecutar consulta a la base de datos (2)."
                                ruta: "/Notificaciones/desusbcribir"
                                adicional: "SQL: #{err.sql}\nError: #{err}"

            else
                res.send YAML.stringify
                    exito: false
                    payload: {}
                    error:
                        razon: "Error al ejecutar consulta a la base de datos."
                        ruta: "/Notificaciones/desusbcribir"
                        adicional: "SQL: #{err.sql}\nError: #{err}"
    else
        res.send YAML.stringify
            exito: false
            payload: {}
            error:
                razon: "No se enviaron opcionID o navegador_hash"
                ruta: "/Notificaciones/desusbcribir"
                adicional: "opcionID: #{opcion_ID}\nnavegador_hash: #{navegador_hash}"
