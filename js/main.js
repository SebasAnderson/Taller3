(function () {
  "use strict";

  var regalo = document.getElementById("regalo");
  document.addEventListener("DOMContentLoaded", function () {

    var map = L.map('mapa').setView([-34.610676, -58.361778], 16);
    L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
      attribution:
        '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
    }).addTo(map);

    L.marker([-34.610676, -58.361778])
      .addTo(map)
      .bindPopup("BsAsWebCamp 2020 <br> Entradas ya disponibles")
      .openPopup()
      .bindTooltip('Un Tooltip')
      .openTooltip();

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

    if(document.getElementById('calcular')){

    calcular.addEventListener("click", calcularMontos);

    pase_dia.addEventListener("blur", mostrarDias);
    pase_dosDias.addEventListener("blur", mostrarDias);
    pase_completo.addEventListener("blur", mostrarDias);

    nombre.addEventListener("blur", validarCampos);
    apellido.addEventListener("blur", validarCampos);
    email.addEventListener("blur", validarCampos);
    email.addEventListener("blur", validarMail);

    function validarCampos() {
      if (this.value == "") {
        errorDiv.style.display = "block";
        errorDiv.innerHTML = "Este campo es obligatorio";
        this.style.border = "1px solid red";
        errorDiv.style.border = "1px solid red";
      } else {
        errorDiv.style.display = "none";
        this.style.border = "1px solid #cccccc";
      }
    }

    function validarMail() {
      if (this.value.indexOf("@") > -1) {
        errorDiv.style.display = "none";
        this.style.border = "1px solid #cccccc";
      } else {
        errorDiv.style.display = "block";
        errorDiv.innerHTML = "Debe tener al menos una @";
        this.style.border = "1px solid red";
        errorDiv.style.border = "1px solid red";
      }
    }

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
          lista_productos.innerHTML += listadoProductos[i] + "<br/>";
        }
        suma.innerHTML = "$ " + totalPagar;
      }
    }

    function mostrarDias() {
      console.log('evento funciona')
      var boletosDia = parseInt(pase_dia.value, 10) || 0,
        boletos2Dias = parseInt(pase_dosDias.value, 10) || 0,
        boletosCompleto = parseInt(pase_completo.value, 10) || 0;

      var diasElegidos = [];
      // console.log(boletosDia);
      if (boletosDia > 0) {
        diasElegidos.push("viernes");
        console.log(diasElegidos);
      }
      if (boletos2Dias > 0) {
        diasElegidos.push("viernes", "sabado");
        console.log(diasElegidos);
      }
      if (boletosCompleto > 0) {
        diasElegidos.push("viernes", "sabado", "domingo");
        console.log(diasElegidos);
      }
      for (var i = 0; i < diasElegidos.length; i++) {
        document.getElementById(diasElegidos[i]).style.display = "block";
      }
    }
  }
  }); //Dom content loaded
})();

$(function() {

  //Lettering
  $('.nombre-sitio').lettering();

  // //Menu fijo
   var windowHeight = $(window).height();
   var barraAltura = $('.barra').innerHeight();

   $(window).scroll(function() { 
     console.log('scroll here');
     var scroll = $(window).scrollTop();
     if(scroll > windowHeight) {
       $('.barra').addClass('fixed');
       $('body').css({'margin-top': barraAltura='px'});
     }else {
       $('.barra').removeClass('fixed');
       $('body').css({'margin-top': '0px'});
     }
   });

  // Menu Responsive

  $('.menu-movil').on('click', function(){
    $('.navegacion-principal').slideToggle();
  });



  //Programa de conferencias
  $('.programa-evento .info-curso:first').show();
  $('.menu-programa a:first').addClass('activo');
  
  $('.menu-programa a').on('click', function(){
    $('.menu-programa a').removeClass('activo');
    $(this).addClass('activo');
      $('.ocultar').hide();
    var enlace = $(this).attr('href');
    $(enlace).fadeIn(1000);
    return false;
  });

  //Animaciones para los numeros
  $('.resumen-evento li:nth-child(1) p').animateNumber({number: 6},1200);
  $('.resumen-evento li:nth-child(2) p').animateNumber({number: 15},1200);
  $('.resumen-evento li:nth-child(3) p').animateNumber({number: 3},1200);
  $('.resumen-evento li:nth-child(4) p').animateNumber({number: 9},1300);

  //CUENTA-REGRESIVA

  $('.cuenta-regresiva').countdown('2020/12/09 09:00:00', function(event){
    $('#dias').html(event.strftime('%D'));
    $('#horas').html(event.strftime('%H'));
    $('#minutos').html(event.strftime('%M'));
    $('#segundos').html(event.strftime('%S'));
  });


});