$(function() {
  var el = document.querySelector('.sidenav');
  Ps.initialize(el);


  $( ".item-sidenav" ).hover(function() {
    if(element(0).is(":hover")){
      stay_right(0);
    }else{
      stay_left(0);
    }
    if(element(1).is(":hover")){
      stay_right(1);
    }else{
      stay_left(1);
    }
    if(element(2).is(":hover")){
      stay_right(2);
    }else{
      stay_left(2);
    }
    if(element(3).is(":hover")){
      stay_right(3);
    }else{
      stay_left(3);
    }
  });

  function element(i){
    return $(".item-sidenav").eq(i); // Seleciona um elemento do sidenav, dado o seu índice.
  }
  function stay_left(i){
    $(".item-sidenav").eq(i).css("margin-left", "0%"); // elemento selecionado é trazido à esquerda.
  }
  function stay_right(i){
    $(".item-sidenav").eq(i).css("margin-left", "5%"); // elemento selecionado é trazido à direita.
  }

  data = {
    datasets: [{
        data: [10, 20, 30]
    }],

    // These labels appear in the legend and in the tooltips when hovering different arcs
    labels: [
        'Red',
        'Yellow',
        'Blue'
    ]
  };

  var ctx = document.getElementById("pie_chart");
  var myPieChart = new Chart(ctx,{
    type: 'pie',
    data: data
  });

});
