$(function(){
	$("form").on("submit", sendQuery)
});

function sendQuery (e){
	e.preventDefault();
	var url = $(this).attr("action")
	var method = $(this).attr("method")
	$.ajax({
		type: method,
		url: url,
		data: $("form").serialize(),
		success: function(response){
			showResponse(response)

		}
	});
}

// function updatePage(response){
// 	$("form").fadeToggle(1000);
// 	showResponse(response);
// }
function showResponse(response){
		$("body").html(response);
}
	// need to prevent default action
	//need to extract URL from form to use in ajax request
	//serialize the data 
	//make the ajax call
	//format response

