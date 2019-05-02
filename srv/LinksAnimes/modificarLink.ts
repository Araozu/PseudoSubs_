import {con} from "../index";

const modificarLink = (req: any, res: any) => {

    const ep_ID = req.body.ep_ID;

    const sql1= `SELECT visitas FROM eps WHERE ep_ID=${ep_ID}`;
    const sql = `UPDATE eps SET visitas = visitas + 1 WHERE ep_ID=${ep_ID}`;
    con.query(
        sql1,
        (err: Error, respuesta: {visitas: number}[]) => {
            if (!err) {

                const nuevoNumVisitas = respuesta[0].visitas + 1;
                const sql2 = `UPDATE eps SET visitas=${nuevoNumVisitas} WHERE ep_ID=${ep_ID}`;

                con.query(sql2, (err: Error) => {
                    if (!err) {
                        res.send("Exito");
                    } else {
                        res.send("Error");
                        console.log(`Error al actualizar el contador de clicks del ep ${ep_ID} en \
                LinksAnimes/modificarLinks:\n${err}\nSQL:\n${sql2}`);
                    }
                });


            } else {
                console.log(`Error al actualizar el contador de clicks del ep ${ep_ID} en \
                LinksAnimes/modificarLinks:\n${err}\nSQL:\n${sql1}`);
                res.send("Error :c");
            }
        }
    );

};

module.exports.modificarLinks = modificarLink;