import {con} from "../index"
import YAML from "yaml"

export default (req, res) ->
    query = "SELECT * FROM animes ORDER BY anime_ID DESC "
    con.query query, (err, respuesta) ->
        res.send do ->
            unless err
                YAML.stringify
                    exito: true
                    payload: respuesta
                    error: {}
            else
                """
        exito: false
        payload: {}
        error:
          razon: Error al ejecutar la consulta a la base de datos
          ruta: /Anime/obtenerTodosAnimes
          adicional: "Query: #{query}\nError: #{err}"
        """
