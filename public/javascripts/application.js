$(document).ready(function() {
	$("a.new_window").attr("target", "_blank");
	setTimeout(hideFlashes, 500);
});

var hideFlashes = function() {
  $("#flash_notice, #flash_error").fadeOut(3000);
}
