console.clear();

var id=0;

var getID = () => ++id;
const isEmpty = (str) => str.trim() === '';

function agregar (){
	var nombre= document.getElementById("nombre");
	var apellido= document.getElementById("apellido");
	var email= document.getElementById("email");
	var telefono= document.getElementById("telefono");
	
	nombreVal=nombre.value;
	apellidoVal=apellido.value;
	emailVal=email.value;
	telefonoVal=telefono.value;
	
	tablaUsuarios = document.getElementById("tablaUsuarios");
	
	if (isEmpty(nombreVal)){
		alert("El nombre no puede estar vacio.");
		return;
	}
	if (isEmpty(apellidoVal)){
		alert("El apellido no puede estar vacio.");
		return;
	}
	if (isEmpty(telefonoVal)){
		alert("El telefono no puede estar vacio.");
		return;
	}
	
	if (isEmpty(nombreVal) || isEmpty(apellidoVal) || isEmpty(emailVal) || isEmpty(telefonoVal)){
		alert("Todos los campos son obligatorios");
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
	if( isNaN(num_int)===true){
		alert("El telefono solo debe contener numeros.");
		return;
	}
	if(telefonoVal.length!==9){
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
	

	let id=getID();
	let fila=`<tr data-id="${id}">
			<td>${id}</td>
			<td>${nombreVal}</td>
			<td>${apellidoVal}</td>
			<td>${emailVal}</td>
			<td>${telefonoVal}</td>
			<td><button class="btnEliminar">Eliminar</button></td>
	    	</tr>`;
	tablaUsuarios.lastElementChild.insertAdjacentHTML("beforeend",fila);
	nombre.value='';
	apellido.value='';
	email.value='';
	telefono.value='';
	
	nombre.focus();
};

document.addEventListener("click",(e)=>{
	if (e.target.classList.contains("btnEliminar")){
		e.target.parentElement.parentElement.remove();
	}
})

function asignar(){
	btnAgregar=document.getElementById("btnAgregar");
	btnAgregar.addEventListener("click",agregar);
}

window.addEventListener("load",asignar);