$(document).ready(function (){
  $("#flight").click(function (){
    esconder_os_visiveis("voos");
    $("#voos").toggle();
  });
  $("#airplane").click(function (){
    esconder_os_visiveis("aeronaves");
    $("#aeronaves").toggle();
  });
  $("#worker").click(function (){
    esconder_os_visiveis("funcionarios");
    $("#funcionarios").toggle();
  });
  $("#function").click(function (){
    esconder_os_visiveis("funcoes");
    $("#funcoes").toggle();
  });

  $('select').material_select();

});

function esconder_os_visiveis(opcao){
  if(verificar_visibilidade() != opcao){
    $("#"+verificar_visibilidade()).hide();
  }
}
function verificar_visibilidade(){
  if($("#voos").is(":visible")==true){
    return "voos";
  }else if($("#aeronaves").is(":visible")==true){
    return "aeronaves";
  }else if($("#funcionarios").is(":visible")==true){
    return "funcionarios";
  }else if($("#funcoes").is(":visible")==true){
    return "funcoes";
  }
}
