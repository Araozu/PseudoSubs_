import {MysqlError} from "mysql";

interface Datos {
    aviso: string,
    sigEp: number,
    anime_ID: number
}

import {con} from "../../index";

const cambiarMensaje = (req: any, res: any) => {

    const YAML = require('yaml');

    const datosStr = req.body.datos;

    if (datosStr) {

        const data: Datos = YAML.parse(datosStr);

        const sql = `UPDATE links SET aviso=?, sigEp=? WHERE anime_ID=?`;
        const datosSQL = [data.aviso, data.sigEp, data.anime_ID];
        con.query(sql, datosSQL,(err: MysqlError) => {
            if (!err) {

                res.send(`exito: true`);

            } else {
                console.log(`Error al ejecutar query en /Admin/Eps/cambiarMensaje.ts:\n${err}\n${err.sql}`);
                res.send(`exito: false\nerror: Error de consulta(0)..`);
            }
        });

    } else {
        console.log(`Error. Los datos no existen en /Admin/Eps/cambiarMensaje.ts`);
        res.send(`exito: false\nerror: Los datos no existen.`);
    }

};

module.exports.cambiarMensaje = cambiarMensaje;