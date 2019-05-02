const fun = require("./srv/index").fun;

const SPAhistory = require('connect-history-api-fallback');
let express = require('express');
const compresion = require('compression');
const bodyParser = require('body-parser');

let app = express();

// History: Middleware para el routing de la SPA en modo history
// Por alguna razon solo funciona si lo uso antes de establecer el directorio estatico dist ...
app.use(SPAhistory());
/* Compresion gzip */
app.use(compresion());

app.use(express.static('dist'));

app.use(express.urlencoded());
app.use(express.json());
app.use(bodyParser.json());

/* CORS para localhost y beta.pseudosubs.com */

app.all("*", (req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

app.get("/");

fun(app);

app.listen(8080, () => console.log("Iniciado en 8080"));