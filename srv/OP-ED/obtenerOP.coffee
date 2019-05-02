import {con} from "../index"
import YAML from "yaml"

export fun = (req, res) ->
    anime_ID = req.params.anime_ID

    if anime_ID?
        sql = "SELECT * FROM op WHERE anime_ID=? ORDER BY num_OP ASC"
        datos = [anime_ID]
        con.query sql, datos, (err, respuesta) ->
            unless err?
                res.send YAML.stringify
                    exito: true
                    payload: respuesta
                    error: {}
            else
                res.send YAML.stringify
                    exito: false
                    payload: {}
                    error:
                        razon: "Error al ejecutar consulta a la base de datos."
                        ruta: "/Op-ED/obtenerOP"
                        adicional: "Query: \n#{err.query}\nError: \n#{err}"
    else
        res.send YAML.stringify
            exito: false
            payload: {}
            error:
                razon: "No se envio ningun anime_ID. Actual: #{anime_ID}"
                ruta: "/Op-ED/obtenerOP"
                adicional: {}
#