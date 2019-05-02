import {con} from "../index"
import YAML from "yaml"

export fun = (req, res) ->

    params = req.body.params
    if params?

        params = YAML.parse params
        sql = "INSERT INTO eps (opcion_ID, num_ep, visitas, link, peso) VALUES (?, ?, ?, ?, ?)"
        datos = [params.opcion_ID, params.num_ep, params.visitas, params.link, params.peso]
        con.query sql, datos, (err) ->
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
                        razon: "Error al ejecutar consulta a la base de datos."
                        ruta: "/Links/crearLinks"
                        adicional: "sql: \n#{err.sql}\nerr:\n#{err}"
    else
        res.send YAML.stringify
            exito: false
            payload: {}
            error:
                razon: "No se pasaron los params."
                ruta: "/Links/crearLinks"
                adicional: ""
