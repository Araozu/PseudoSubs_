import {Connection, MysqlError} from "mysql";
import * as core from "express-serve-static-core";

import {con} from "../../index";

const YAML = require('yaml');

interface respuesta {
    peso: string
}

const estadisticas = (req: core.Request, res: core.Response) => {

    con.query(`SELECT peso FROM eps`,(err: MysqlError, respuestas: respuesta[]) => {
        if (!err) {

            let totalMB = 0;
            let cantidadEps = 0;
            respuestas.forEach(data => {
                totalMB += parseInt(data.peso);
                cantidadEps++;
            });

            const respuesta: any = {
                episodios: cantidadEps,
                gigas: (totalMB/1024).toFixed(2)
            };

            res.send(YAML.stringify(respuesta));
        }
    });

};

module.exports.estadisticas = estadisticas;