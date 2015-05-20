$( document ).ready(function() {

  $("#pokemon").hide()

  setInterval(function(){
    pokerain()
  }, 150);

  function pokerain() {
    var pokeclone = $("#pokemon").clone().show();
    var left_offset = Math.floor((Math.random() * 90) + 1);
    $(".pokeholder").append(pokeclone);
    $(pokeclone).parent().css({position: 'relative'});
    $(pokeclone).css({left: left_offset + "%", top: -100, position:'absolute'});
    $(pokeclone).animate({ "top": "600px" }, 2300 );
  }

  $("#random").click(function() {
    var pokerandom = Math.floor((Math.random() * 719) + 1);
    window.location = '/' + pokerandom;
  });

}); //end ready