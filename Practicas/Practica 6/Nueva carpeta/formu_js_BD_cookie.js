const isEmpty = (str) => str.trim() === '';

function agregar (){
	var dni= document.getElementById('dni');	
	var nombre= document.getElementById('nombre');
	var apellido= document.getElementById('apellido');
	var email= document.getElementById('email');
	var telefono= document.getElementById('telefono');
	
	dniVal=dni.value;
	nombreVal=nombre.value;
	apellidoVal=apellido.value;
	emailVal=email.value;
	telefonoVal=telefono.value;
	
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
	if (isEmpty(emailVal)){
		alert("El E-mail no puede estar vacio.");
		return;
	}
	if (isEmpty(telefonoVal)){
		alert("El telefono no puede estar vacio.");
		return;
	}
	
	if (isEmpty(dniVal) || isEmpty(nombreVal) || isEmpty(apellidoVal) || isEmpty(emailVal) || isEmpty(telefonoVal)){
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
	var num_int=parseInt(telefonoVal);
	if( isNaN(num_int)==true){
		alert("El telefono solo debe contener numeros.");
		return;
	}
	if(telefonoVal.length!=9){
		alert("El telefono debe tener 9 digitos.");
		return;
	}
	var arro=0;
	var punt=0;
	for(var i=0; i<emailVal.length; i++){
		if (emailVal.charAt(i)==="@"){
			arro=arro+1;
		}
		if (emailVal.charAt(i)==="."){
			punt=punt+1;
		}
	}
	if (arro<1){
		alert("El email debe tener por lo menos una arroba.");
		return;
	}
	if (punt<1){
		alert("El email debe tener por lo menos un punto.");
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
	ajax.send("&dni=" + dniVal + "&nombres=" + nombreVal + "&apellidos=" + apellidoVal + "&email=" + emailVal + "&telefono=" + telefonoVal);
};

function cambiar_fondo(){
	var bg_color = document.getElementById("bg_color").value;
	document.body.style.backgroundColor = bg_color;
	
	if (window.XMLHttpRequest) {
		ajax= new XMLHttpRequest();
	} else { 
		ajax =new ActiveXObject("Microsoft.XMLHTTP");
	}

	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 ){
			if (ajax.status !=200){
				alert("Ocurrio un error");
			}
		}
	}
		
	ajax.open("GET", "insertar_cookie.php?color=" + bg_color);
	ajax.send(null);
};

function asignar(){
	btnAgregar=document.getElementById('btnAgregar');
	btnAgregar.addEventListener("click",agregar);
}

window.addEventListener("load",asignar);
