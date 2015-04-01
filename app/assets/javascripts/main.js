$(function(){
	$("form").on("submit", sendQuery);
});

function sendQuery (e){
	e.preventDefault();
	var url = $(this).attr("action");
	var method = $(this).attr("method");
	$.ajax({
		type: method,
		url: url,
		data: $("form").serialize(),
		datatype: 'script'
		// success: function(response){
		// 	$('form').hide();
		// 	showResponse(response);
		// }
	});
}

// function showResponse(response){
// 		$("body").html(response).hide();
// 		showBody();
// }

// function showBody() {
// 	$('body').fadeIn('slow');
// }
