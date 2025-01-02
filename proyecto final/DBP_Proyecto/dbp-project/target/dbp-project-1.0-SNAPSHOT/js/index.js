/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

const form = document.getElementById("login");


let clave = "";

form.addEventListener("submit", e =>{
   e.preventDefault();
   if(clave.length === 6 && document.getElementById("tarjeta").value.length === 16){
       const data = new URLSearchParams();
       data.append("tarjeta", document.getElementById("tarjeta").value);
       data.append("clave", clave);
       
       enviarDatos(data);
   }else{
       alert("error")
       document.querySelector(".error").style.display = "block";
   }
});

function maxLengthCheck(object, max){
    if(object.value.length > max)
        object.value = object.value.slice(0,max);
}

document.getElementById("clave").addEventListener("click",e => {
   e.target.disabled = true;
   e.target.value = "○ ○ ○ ○ ○ ○";
   teclado(e.target);
    
});

const password_view = [
    "○ ○ ○ ○ ○ ○",
    "● ○ ○ ○ ○ ○",
    "● ● ○ ○ ○ ○",
    "● ● ● ○ ○ ○",
    "● ● ● ● ○ ○",
    "● ● ● ● ● ○",
    "● ● ● ● ● ●"
];

function teclado(input){
    const contenedor = document.getElementById("teclado");
    let numbers = [0,1,2,3,4,5,6,7,8,9];
    numbers.sort(() => Math.random() - 0.5);
    numbers.forEach((num,index) => {
        contenedor.innerHTML += `<div class="num-boton">${num}</div>`;
        
        if(index === 4){
            contenedor.innerHTML += "<div class='volver'><-</div>";
        }
        
        if(index === 9){
            contenedor.innerHTML += "<div class='borrar'>basura</div>";
        }
    });
    
    document.addEventListener("click", e=>{
        if(e.target.matches(".num-boton")){
            clave += e.target.textContent;

            if(clave.length >= 6){
                clave = clave.slice(0,6);
            }
            
            input.value = password_view[clave.length];
        }
        
        if(e.target.matches(".volver")){
            clave = clave.slice(0,clave.length - 1);
            input.value = password_view[clave.length];
        }
        
        if(e.target.matches(".borrar")){
            clave = "";
            input.value = password_view[clave.length];

        }
    
    });
}

function enviarDatos(data){
    fetch("http://localhost:8080/dbp-project/login",{
        body: data,
        method: 'POST'
    })
            .then(res => {
                if (res.status === 200) {
                    window.location.replace("http://localhost:8080/dbp-project/home");
                }
    })
    
    
}
