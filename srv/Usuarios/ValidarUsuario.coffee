CLIENT_ID = "27783367584-1hms6h62heplhlvsaihl8vqs7ho3o2b7.apps.googleusercontent.com"
OAuth2Client = require("google-auth-library").OAuth2Client
cliente = new OAuth2Client CLIENT_ID
YAML = require("yaml")
con = require("../index").con

verificar = (token) ->
    new Promise (resolve, reject) ->
        cliente.verifyIdToken
            idToken: token
            audience: CLIENT_ID
        .then (ticket) ->
            ticket.getPayload()
            .then (res) -> resolve res
        .catch (err) -> reject err

export fun = (req, res) ->
    idToken = req.body.idToken
    if idToken?
        verificar idToken

        .then (payload) ->
            sql1 = "SELECT * FROM usuarios WHERE google_ID=?"
            datos = [payload.sub]
            con.query sql1, datos, (err, resultadoQ) ->
                unless err?
                    if resultadoQ[0]?
                        usuario = resultadoQ[0]
                        res.send YAML.stringify
                            exito: true
                            payload:
                                user_ID: usuario.user_ID
                                nombre: usuario.nombre
                                email: usuario.email
                                fotoPerfil: usuario.fotoPerfil
                                googleID: usuario.google_ID
                            error: {}
                    else
                        sql = "INSERT INTO usuarios (google_ID, email, fotoPerfil, nombre) VALUES (?, ?, ?, ?)"
                        datos2 = [payload.sub, payload.email, payload.picture, payload.name]
                        con.query sql, datos2, (err) ->
                            unless err?
                                res.send YAML.stringify
                                    exito: true
                                    payload:
                                        nombre: payload.nombre
                                        email: payload.email
                                        fotoPerfil: payload.picture
                                        googleID: payload.sub
                                    error: {}
                            else
                                res.send YAML.stringify
                                    exito: false
                                    payload: {}
                                    error:
                                        razon: "Error al ejecutar consulta a la base de datos.\n#{err}"
                                        ruta: "/Usuarios/ValidarUsuario"
                                        adicional: "query: #{err.sql}\ntoken Verificado: #{JSON.stringify payload}"
                else
                    res.send YAML.stringify
                        exito: false
                        payload: {}
                        error:
                            razon: "Error al ejecutar consulta a la base de datos.\n#{err}"
                            ruta: "/Usuarios/ValidarUsuario"
                            adicional: "query: #{err.sql}"
        .catch (err) ->
            res.send YAML.stringify
                exito: false
                payload: {}
                error:
                    razon: err
                    ruta: "/Usuarios/ValidarUsuario"
                    adicional: ""

    else
        res.send YAML.stringify
            exito: false
            payload: {}
            error:
                razon: "No se envió el token: #{idToken}"
                ruta: "/Usuarios/ValidarUsuario"
                adicional: ""
#