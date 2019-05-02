interface respuestaLinks {
    opcion_ID: number,
    links_ID: number,
    num_opcion: number,
    formato: string,
    res: string,
    servidor: string,
    color: string
}

import {con} from "../../index";

const obtenerVariantes = (req: any, res: any) => {

    const YAML = require('yaml');

    const anime_ID: string = req.params.anime_ID;

    if (anime_ID) {

        const query = `SELECT * FROM links_opciones WHERE links_ID=(SELECT links_ID FROM links WHERE anime_ID=${anime_ID})`;

        con.query (query, (err: Error, response: respuestaLinks[]) => {
            if (!err) {

                res.send(YAML.stringify(response));

            } else {
                console.log("Error al ejecutar query sql. La query era:\n" + query + "\n y el error es:\n" + err);
                res.send("error: true");
            }
        });

    } else {
        console.log("Error. anime_ID no existe en Admin/Eps/obtenerVariantes con.connect:\n" + anime_ID);
        res.send("error: true");
    }

};

module.exports.obtenerVariantes = obtenerVariantes;