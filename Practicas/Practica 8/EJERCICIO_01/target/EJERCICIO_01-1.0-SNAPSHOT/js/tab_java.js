function insertar(){
    var n=parseInt(document.getElementById("numero").value);
    if (n>10){
        alert("Ingrese por favor un número que sea menor o igual a 10.");
    }
    else if (n<=10){
       var t=document.getElementById("tablaMulti");
       t.lastElementChild.insertAdjacentHTML("beforeend", "<tr><td>"+n+"</td><td>"+n*2+"</td><td>"+n*3+"</td><td>"+n*4+"</td><td>"
               +n*5+"</td><td>"+n*6+"</td><td>"+n*7+"</td><td>"+n*8+"</td><td>"+n*9+"</td><td>"+n*10+"</td><td>"+n*11+"</td><td>"+n*12+"</td><td>"
       +n*13+"</td><td>"+n*14+"</td><td>"+n*15+"</td><td>"+n*16+"</td><td>"+n*17+"</td><td>"+n*18+"</td><td>"+n*19+"</td><td>"+n*20+"</td></tr>");
    }
    else{
       alert("Ingrese por favor un número.");
    }
}