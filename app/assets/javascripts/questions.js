function change() 
{
    var elem = document.getElementById("mark-btn");
    if (elem.value=="Mark") 
    	elem.value = "Marked";
    
});

    else elem.value = "Mark";
}

$(document).on("ready page:change", function() {
	$("#mark-btn").on("ajax:success", function() {
		'yay!';
	}).on("ajax:error", function() {
		':`(';
	});
});