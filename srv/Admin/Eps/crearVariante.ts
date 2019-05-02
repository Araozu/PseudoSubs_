import {MysqlError} from "mysql";

interface Datos {
    num_opcion: number,
    formato: string,
    resolucion: string,
    servidor: string,
    anime_ID: number,
    color: string
}

import {con} from "../../index";

const crearVariante = (req: any, res: any) => {

    const YAML = require('yaml');
    const mysql = require('mysql');

    const datos: string = req.body.datos;

    if (datos) {

        const data: Datos = YAML.parse(datos);
        const E = mysql.escape;

        const crearEntrada = (respuesta: [{links_ID: number}]) => {
            const links_ID = respuesta[0].links_ID;
            const query = `INSERT INTO links_opciones (links_ID, num_opcion, formato, res, servidor, color) 
                     VALUES(${links_ID}, ${data.num_opcion}, ${E(data.formato)}, ${E(data.resolucion)}, ${E(data.servidor)}, ${E(data.color)})`;
            con.query(query,(err: MysqlError) => {
                if (!err) {

                    res.send(`exito: true`);

                } else {
                    console.log(`Error al ejecutar query en /Admin/Eps/crearVariante.ts\n:${err}\n${err.sql}`);
                    res.send(`exito: false\nerror: Consulta fallida(3).`);
                }
            });
        };

        con.query(
            `SELECT links_ID FROM links WHERE anime_ID=${data.anime_ID}`,
            (err: MysqlError, respuesta: [{links_ID: number}]) => {
                // Ya existe el link en la base de datos
            if (!err && respuesta[0]) {
                crearEntrada(respuesta);
            }
            // No existe el link en la base de datos
            else if (!err && !respuesta[0]) {

                con.query(`INSERT INTO links (anime_ID, aviso, sigEp) VALUES (${data.anime_ID}, 'Patience from zhou', 0)`, (err: MysqlError) => {
                    if (!err) {

                        con.query(
                            `SELECT links_ID FROM links WHERE anime_ID=${data.anime_ID}`,
                            (err: MysqlError, respuesta: [{links_ID: number}]) => {
                                if (!err) {
                                    crearEntrada(respuesta);
                                } else {
                                    console.log(`Error al ejecutar query en /Admin/Eps/crearVariante.ts\n:${err}\n${err.sql}`);
                                    res.send(`exito: false\nerror: Consulta fallida(2).`);
                                }
                            });

                    }
                    else {
                        console.log(`Error al ejecutar query en /Admin/Eps/crearVariante.ts\n:${err}\n${err.sql}`);
                        res.send(`exito: false\nerror: Consulta fallida(1).`);
                    }
                });

            }
            else {
                console.log(`Error al ejecutar query en /Admin/Eps/crearVariante.ts\n:${err}\n${err.sql}`);
                res.send(`exito: false\nerror: Consulta fallida(0).`);
            }
        });

    } else {
        console.log(`Error. Los datos no existen en /Admin/Eps/crearVariante.ts`);
        res.send(`exito: false\nerror: Los datos no existen.`);
    }

};

module.exports.crearVariante = crearVariante;