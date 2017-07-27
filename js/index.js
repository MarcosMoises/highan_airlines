$('#dt-ida, #dt-volta, #nascimento, #data_p, #data_c').pickadate({
  selectMonths: true, // Creates a dropdown to control month
  selectYears: 15, // Creates a dropdown of 15 years to control year,
  today: 'Today',
  clear: 'Clear',
  close: 'Ok',
  closeOnSelect: false // Close upon selecting a date,
});

(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $('.parallax').parallax();
    $('select').material_select();
    $("#cpf").mask("999.999.999-99");

  }); // end of document ready
})(jQuery); // end of jQuery name space
