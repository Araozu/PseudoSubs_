interface formatoDataARecibir {
    opcion_ID: number,
    num_ep: number,
    visitas: number,
    link: string,
    peso: string
}

import {con} from "../../index";

const crearLink = (req: any, res: any) => {

    const YAML = require('yaml');

    const parametros: formatoDataARecibir = YAML.parse(req.body.params);


    if (parametros) {

        const query = `INSERT INTO eps (opcion_ID, num_ep, visitas, link, peso) VALUES (${parametros.opcion_ID}, 
          ${parametros.num_ep}, ${parametros.visitas}, ${con.escape(parametros.link)}, ${con.escape(parametros.peso)} )`;
        con.query(query, (err: Error) => {
            if (!err) {

                res.send("error: false");

            } else {
                console.log("Error al ejecutar query en /Admin/Eps/crearEp -> con.query (linea 20). Query y error:\n" + query + "\n" + parametros);
                res.send("error: true");
            }
        });

    } else {
        console.log("Error. 'parametros' no existe en /Admin/Eps/crearEp -> con.connect (linea 16):\n" + parametros);
        res.send("error: true");
    }

};

module.exports.crearLink = crearLink;