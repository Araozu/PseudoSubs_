import {con} from "../index"
import YAML from "yaml"

export default (req, res) ->
    if req.params.id?
        idAnime = req.params.id

        query = "SELECT * FROM animes WHERE anime_ID=?"

        con.query query, [idAnime], (err, respuesta) ->
            res.send do ->
                unless err
                    YAML.stringify
                        exito: true
                        payload: respuesta[0]
                        error: {}
                else
                    """
          exito: false
          payload: {}
          error:
            razon: "Error al ejecutar consulta en la base de datos."
            ruta: "/Anime/obtenerTodosAnimes"
            adicional: "Query: #{query}\nError:#{err}"
          """

    else
        res.send """
      exito: false
      payload: {}
      error:
        razon: "No se ha pasado ningún id."
        ruta: "/Anime/obtenerTodosAnimes"
        adicional: "Anime ID actual: #{req.params.id}"
      """
