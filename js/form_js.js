(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $('.parallax').parallax();

  }); // end of document ready
})(jQuery); // end of jQuery name space

  $('#nascimento, #data_p, #data_c').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year,
    today: 'Today',
    clear: 'Clear',
    close: 'Ok',
    closeOnSelect: false // Close upon selecting a date,
  });


$(document).ready(function(){
  $('select').material_select();
    $("#cpf").mask("999.999.999-99");
    $("#telefone").mask("(99) 9999-9999");

});
