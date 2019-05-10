webPush = require("../index").webPush

export fun = (subscripcion, titulo, cuerpo) ->
    datos = JSON.stringify
        titulo: titulo
        cuerpo: cuerpo
        icono: "https://pseudosubs.com/favicon.png"
        tipo: "basico"
    webPush.sendNotification (JSON.parse subscripcion), datos
