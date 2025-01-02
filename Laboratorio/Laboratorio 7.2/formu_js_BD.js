const isEmpty = (str) => str.trim() === '';

function agregar (){
	var dni= document.getElementById('dni');	
	var nombre= document.getElementById('nombre');
	var apellido= document.getElementById('apellido');
	
	dniVal=dni.value;
	nombreVal=nombre.value;
	apellidoVal=apellido.value;
	
	tablaUsuarios = document.getElementById('tablaUsuarios');
	
	
	if (isEmpty(dniVal)){
		alert("El DNI no puede estar vacio.");
		return;
	}
	if (isEmpty(nombreVal)){
		alert("El nombre no puede estar vacio.");
		return;
	}
	if (isEmpty(apellidoVal)){
		alert("El apellido no puede estar vacio.");
		return;
	}

	if (isEmpty(dniVal) || isEmpty(nombreVal) || isEmpty(apellidoVal)){
		alert("Todos los campos son obligatorios");
		return;
	}
	var dni_int=parseInt(dniVal);
	if( isNaN(dni_int)==true){
		alert("El DNI solo debe contener numeros.");
		return;
	}
	if(dniVal.length!=9){
		alert("El DNI debe tener 9 digitos.");
		return;
	}
	if(nombreVal.length<4){
		alert("El nombre no puede contener menos de 3 caracteres.");
		return;
	}
	
	if(apellidoVal.length<4){
		alert("El apellido no puede contener menos de 3 caracteres.");
		return;
	}
	
	var contenido = document.getElementById("contenido");
	
	if (window.XMLHttpRequest){
		ajax = new XMLHttpRequest();
	} 
	else {
		ajax = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	ajax.onreadystatechange = function (){
		if(ajax.readyState == 4 && ajax.status == 200){
			contenido.innertHTML = ajax.responseText;
		}
		else{
			contenido.innerHTML = "<img width='50' height='50' src='cargando.gif'>";
		}
	}
	
	ajax.open("POST", "insertar_mostar.php");
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	ajax.send("&dni=" + dniVal + "&nombres=" + nombreVal + "&apellidos=" + apellidoVal);
};

function asignar(){
	btnAgregar=document.getElementById('btnAgregar');
	btnAgregar.addEventListener("click",agregar);
}

window.addEventListener("load",asignar);
