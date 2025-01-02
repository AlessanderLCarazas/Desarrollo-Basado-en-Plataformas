const isEmpty = (str) => str.trim() === '';

function agregar() {
    var dni = document.getElementById('dni');
    var nombre = document.getElementById('nombre');
    var apellidos = document.getElementById('apellidos');

    dniVal = dni.value;

    nombreVal = nombre.value;
    apellidosVal = apellidos.value;

    tablaUsuarios = document.getElementById('tablaUsuarios');
    if (isEmpty(dniVal) || isEmpty(nombreVal) || isEmpty(apellidosVal)) {
        alert('Todos los campos son obligatorios');
        return;
    }
    var contenido = document.getElementById("contenido");
    if (window.XMLHttpRequest) {
        ajax = new XMLHttpRequest();
    } else {
        ajax = new ActiveXObject("Microsoft.XMLHTTP");

    }
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
            contenido.innerHTML = ajax.responseText;
        } else {
            contenido.innerHTML = "<img width='50' height='50'src='cargando.git'>";

        }
    }
    ajax.open("POST", "insertar.php");
    ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    ajax.send("dni=" + dniVal + "&nombres=" + nombreVal + "&apellidos=" + apellidosVal);


}

function asignar() {
    btnAgregar = document.getElementById('btnAgregar');
    btnAgregar.addEventListener("click", agregar);

}

window.addEventListener("load", asignar);