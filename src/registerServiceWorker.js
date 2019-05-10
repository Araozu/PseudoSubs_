/* eslint-disable no-console */

import { register } from 'register-service-worker'

/*
* Claves VAPID
* Publica: BPA_MfechJ8EwyMC_5-GZsWFtjPCD6f2qAzW5ouxnMs73mGTsgtD47of0pO1rKtpyWiWKE8yZVHHzTGhLHbfVRI
* Privada: 6dOp0WChG-fLFSo9hRnMUn5S1BVBm3KhK9r0m4L-GoA
* */

if (process.env.NODE_ENV === 'production' || true) {
    register(`${process.env.BASE_URL}service-worker.js`, {
        ready() {
            console.log(
                'PseudoSubs está siendo servida desde un service worker.\n' +
                'Para saber más visita https://goo.gl/AFskqB'
            )
        },
        registered(registration) {
            console.log('Se ha registrado el Service worker.');
        },
        cached() {
            console.log('Se ha cacheado el contenido para su uso sin internet.')
        },
        updatefound() {
            console.log('Descargando nuevo contenido.')
        },
        updated() {
            console.log('Hay nuevo contenido disponible, recarga la página.');
            // window.location.reload(true);
        },
        offline() {
            console.log('No hay conexion a internet. ' +
                'PseudoSubs se está ejecutando en modo sin internet.')
        },
        error(error) {
            console.error('Error al registrar el service worker:', error)
        }
    });

}
