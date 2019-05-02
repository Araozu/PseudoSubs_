class GestorDeTareas {
    tareas: boolean[] = [];
    alCompletar: (() => void);

    constructor(alCompletar: (() => void)) {
        this.alCompletar = alCompletar;
    }

    agregarTarea() {
        return (this.tareas.push(false) - 1);
    }

    terminarTarea() {
        this.tareas.pop();
        this.verificarTareas();
    }

    verificarTareas() {
        if (this.tareas.length === 0)
            this.alCompletar();
    }
}

module.exports.GestorDeTareas = GestorDeTareas;