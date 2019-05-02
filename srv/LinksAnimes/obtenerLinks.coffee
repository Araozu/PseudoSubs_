YAML = require("yaml")
con = require("../index").con

class GestorDeTareas
    constructor: (@alCompletar) ->
        @tareas = []

    agregarTarea: -> @tareas.push(false) - 1

    terminarTarea: ->
        @tareas.pop()
        @verificarTareas()

    verificarTareas: ->
        if @tareas.length is 0 then @alCompletar()

export obtenerLinks = (req, res) ->
    animeID = req.body.animeID

    if animeID?
        retorno =
            aviso: ""
            sigEp: ""
            opciones: {}
        sql = "SELECT * FROM links WHERE anime_ID=#{animeID}"
        con.query sql, (err, response) ->
            if not err? and response?.length isnt 0

                link = response[0]
                retorno.aviso = link.aviso
                retorno.sigEp = link.sigEp

                gestorOpciones = new GestorDeTareas () ->
                    res.send YAML.stringify
                        exito: true
                        payload: retorno
                        error: {}

                sql2 = "SELECT * FROM links_opciones WHERE links_ID=#{link.links_ID}"

                con.query sql2, (err, response2) ->
                    if not err? and response2?.length isnt 0

                        response2.forEach (opcion, pos) ->

                            gestorOpciones.agregarTarea()

                            retorno.opciones[opcion.num_opcion] =
                                formato: opcion.formato
                                res: opcion.res
                                servidor: opcion.res
                                color: opcion.color
                                eps: {}

                            sql3 = "SELECT * FROM eps WHERE opcion_ID=#{opcion.opcion_ID}"
                            con.query sql3, (err, response3) ->
                                if not err? and response3?.length isnt 0

                                    response3.forEach (ep) ->
                                        retorno.opciones[opcion.num_opcion].eps[ep.num_ep] =
                                            ep_ID: ep.ep_ID
                                            visitar: ep.visitas
                                            peso: ep.peso
                                            link: ep.link

                                else if response3?.length isnt 0
                                    console.log "Error al consultar eps en /LinksAnimes/obtenerLinks.\n err: #{err}\n sql: #{sql3}"

                                gestorOpciones.terminarTarea()

                    else if response2?.length is 0
                        res.send YAML.stringify
                            exito: false
                            payload: {}
                            error: {
                                razon: "La consulta no dió ningún resultado."
                                ruta: "/LinksAnimes/obtenerLinks"
                                adicional: "(response2) SQL: #{sql2}\nanimeID: #{animeID}"
                            }
                    else
                        res.send YAML.stringify
                            exito: false
                            payload: {}
                            error: {
                                razon: "Error al ejecutar consulta."
                                ruta: "/LinksAnimes/obtenerLinks"
                                adicional: "(response2) sql: #{sql2}"
                            }

            else if response.length is 0
                res.send YAML.stringify
                    exito: false
                    payload: {}
                    error: {
                        razon: "La consulta no dió ningún resultado."
                        ruta: "/LinksAnimes/obtenerLinks"
                        adicional: "SQL: #{sql}\nanimeID: #{animeID}"
                    }
            else
                res.send YAML.stringify
                    exito: false
                    payload: {}
                    error: {
                        razon: "Error al ejecutar consulta."
                        ruta: "/LinksAnimes/obtenerLinks"
                        adicional: "sql: #{sql}"
                    }
    else
        res.send YAML.stringify
            exito: false
            payload: {}
            error:
                razon: "No se envió un animeID"
                ruta: "/LinksAnimes/obtenerLinks"
                adicional: "valor: #{animeID}"
