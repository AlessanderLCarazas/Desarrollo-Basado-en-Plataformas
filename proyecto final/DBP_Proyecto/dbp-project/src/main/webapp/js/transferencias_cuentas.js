/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

let btnContinueC = document.querySelector(".actions .continuar.cuentas");
let btnVolver = document.querySelector(".actions .volver");

const transCuentas = () => {
    btnContinueC.addEventListener("click", (e) => {
        let form = document.querySelector("form");
        let box = document.querySelector(".box");

        let inputFrom = document.getElementById("from");
        let inputTo = document.getElementById("to");
        let inputCurrency = document.getElementById("currency");
        let inputAmount = document.getElementById("amount");


        for (let classN of btnContinueC.className.split(" ")) {
            if (classN === "send") {
                const data = new URLSearchParams();
                data.append("from", inputFrom.value);
                data.append("to", inputTo.value);
                data.append("currency", inputCurrency.value);
                data.append("amount", inputAmount.value);

                fetch("http://localhost:8080/dbp-project/transferencias-cuentas", {
                    body: data,
                    method: 'POST'
                }).then(res => {

                    if (res.status === 200) {
                        window.location.replace("http://localhost:8080/dbp-project/home");
                    }
                });
                return;
            }
        }

        form.classList.add("hidden");
        box.classList.remove("hidden");
        btnContinueC.classList.add("send");
    });
    
    btnVolver.addEventListener("click", (e) => {
        let form = document.querySelector("form");
        let box = document.querySelector(".box");
        for (let classN of btnContinueC.className.split(" ")) {
            if (classN === "send") {
                btnContinueC.classList.remove("send");
                form.classList.remove("hidden");
                box.classList.add("hidden");
                return;
            }
        }
        window.location.replace("http://localhost:8080/dbp-project/home");
    });
};

transCuentas();