import {con} from "../index"
import YAML from "yaml"

export default (req, res) ->
    query = "SELECT * FROM animes ORDER BY anime_ID DESC "
    console.log "Peticion"
    con.query query
        .then (respuesta) =>
            console.log "respuesta"
            res.send YAML.stringify
                exito: true
                payload: respuesta
                error: {}
        .catch (err) =>
            res.send """
                exito: false
                payload: {}
                error:
                  razon: Error al ejecutar la consulta a la base de datos
                  ruta: /Anime/obtenerTodosAnimes
                  adicional: "Query: #{query}\nError: #{err}"
                """
