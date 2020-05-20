(function () {
  "use strict";

  var regalo = document.getElementById("regalo");
  document.addEventListener("DOMContentLoaded", function () {
    //Campos Datos Usuario
    var nombre = document.getElementById("nombre");
    var apellido = document.getElementById("apellido");
    var email = document.getElementById("email");
    // Campos Pases
    var pase_dia = document.getElementById("pase_dia");
    var pase_dosDias = document.getElementById("pase_dosDias");
    var pase_completo = document.getElementById("pase_completo");
    //Botonos y Divs
    var calcular = document.getElementById("calcular");
    var errorDiv = document.getElementById("error");
    var botonRegistro = document.getElementById("btnRegistro");
    var lista_productos = document.getElementById("lista-productos");
    var suma = document.getElementById("suma-total");
    //Extras
    var remeras = document.getElementById("remera_evento");
    var stickers = document.getElementById("stickers");

    calcular.addEventListener("click", calcularMontos);

    pase_dia.addEventListener("blur", mostrarDias);
    pase_dosDias.addEventListener("blur", mostrarDias);
    pase_completo.addEventListener("blur", mostrarDias);

    function calcularMontos(event) {
      event.preventDefault();
      if (regalo.value === "") {
        alert("Debes elegir un regalo");
        regalo.focus();
      } else {
        var boletosDia = parseInt(pase_dia.value, 10) || 0,
          boletos2Dias = parseInt(pase_dosDias.value, 10) || 0,
          boletosCompleto = parseInt(pase_completo.value, 10) || 0,
          cantRemeras = parseInt(remeras.value, 10) || 0,
          cantStickers = parseInt(stickers.value, 10) || 0;

        var totalPagar =
          boletosDia * 30 +
          boletos2Dias * 45 +
          boletosCompleto * 50 +
          cantRemeras * 10 * 0.93 +
          cantStickers * 2;

        console.log(totalPagar);

        var listadoProductos = [];

        if (boletosDia >= 1) {
          listadoProductos.push(boletosDia + " Pases por dia");
        }
        if (boletos2Dias >= 1) {
          listadoProductos.push(boletos2Dias + " Pases por 2 dia");
        }
        if (boletosCompleto >= 1) {
          listadoProductos.push(boletosCompleto + " Pases completo");
        }
        if (boletosCompleto >= 1) {
          listadoProductos.push(cantRemeras + " Remeras");
        }
        if (boletosCompleto >= 1) {
          listadoProductos.push(cantStickers + " Stickers");
        }
        lista_productos.style.display = "block";
        lista_productos.innerHTML = "";
        for (var i = 0; i < listadoProductos.length; i++) {
          lista_productos.innerHTML += listadoProductos[1] + "<br/>";
        }
        suma.innerHTML = "$ " + totalPagar.toFixed(2);
      }
      function mostrarDias() {
        var boletosDia = parseInt(pase_dia.value, 10) || 0,
          boletos2Dias = parseInt(pase_dosDias.value, 10) || 0,
          boletosCompleto = parseInt(pase_completo.value, 10) || 0;

        var diasElegidos = [];

        if (boletosDia > 0) {
          diasElegidos.push('viernes');
          console.log(diasElegidos);
        }
        if (boletos2Dias > 0) {
          diasElegidos.push('viernes', 'sabado');
          console.log(diasElegidos);
        }
        if (boletosCompleto > 0) {
          diasElegidos.push("viernes", "sabado", "domingo");
          console.log(diasElegidos);
        }
        for (var i = 0; 1 < diasElegidos.length; i++) {
          document.getElementById(diasElegidos[i]).style.display = "block";
        }
      }
    }
  }); //Dom content loaded
})();
