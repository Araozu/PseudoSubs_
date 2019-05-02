interface epsRespuesta {
    ep_ID: number,
    opcion_ID: number,
    num_ep: number,
    visitas: number,
    link: string,
    peso: string
}

import {con} from "../../index";

const obtenerLinks = (req: any, res: any) => {

    const YAML = require('yaml');

    const opcion_ID = req.params.opcion_ID;

    if (opcion_ID) {

        const query = `SELECT * FROM eps WHERE opcion_ID=${opcion_ID}`;
        con.query(query, (err: Error, response: epsRespuesta[]) => {
            if (!err) {

                res.send(YAML.stringify(response));

            } else {
                console.log("Error al ejecutar query en /Admin/Eps/obtenerEps con.query (linea 21). Query:\n" + query + "\nError: \n" + err);
                res.send("error: true");
            }
        });

    } else {
        console.log("Error. opcion_ID no existe en /Admin/Eps/obtenerEps con.connect (linea 8)");
        res.send("error: true");
    }

};

module.exports.obtenerLinks = obtenerLinks;