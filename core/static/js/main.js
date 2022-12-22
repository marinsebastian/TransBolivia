$(document).ready(function() {
  $('#switch').click(function() {
    console
    var currentText = $(this).text();
    if (currentText == "Clientes") {
      $(this).text("Reservas");
    } else {
      $(this).text("Clientes");
    }
    $('#clientes').toggleClass('hidden');
    $('#reservas').toggleClass('hidden');
  });
});