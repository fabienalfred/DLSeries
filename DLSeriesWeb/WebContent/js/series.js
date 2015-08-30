// Clear all fields
function clearFields() {
	$("input").val("");
	$("#resultTable > tbody").html("");
//	$("#results").html("");
}

// Check that serie's fields are not empty
function checkFields() {
	if($("#serieName").val() != "" && $("#serieDay").val() != "" 
			&& $("#serieUrl").val() != "" && $("#serieDate").val() != "") {
		return true;
	}
	else {
		return false;
	}
}

// Put clicked serie's attributes into fields
function putIntoFields(serie) {
	$("#serieId").val(serie.attr("data-id"));
	$("#serieName").val(serie.attr("data-nom"));
	$("#serieDay").val(serie.attr("data-jour"));
	$("#serieUrl").val(serie.attr("data-url"));
	$("#serieDate").val(serie.attr("data-dateDiff"));
}

// Open RapidMoviez or Wiki pages for each serie
function openUrls(id) {
	var url = "";
	switch (id) {
	case "rmButton":
		var urlStart = "http://rapidmoviez.com/search/";
		var urlEnd = "+480p/releases";
		$.each($("#resultTable .is-selected"), function(index, tr) {
			var parsedName = $(tr).attr("data-nom").replace(/\ /g, '+');
			var url = urlStart+parsedName+urlEnd;
			window.open(url, "_blank");
		});
		break;
	case "wikiButton":
		$.each($("#resultTable .is-selected"), function(index, tr) {
			var url = $(tr).attr("data-url");
			window.open(url, "_blank");
		});
		break;
	default:
		break;
	}
}


function clickHandler(event) {
	var target = event.target;
	
	switch (target.id) {
	case "buttonReset":
		clearFields();
		break;
	case "rmButton": case "wikiButton":
		openUrls(target.id);
		break;
	case "editButton":
		putIntoFields($(target).closest("tr"));
		break;
	default:
		break;
	}
//	$(".mdl-checkbox").click(function() {
//		toggleSelected($(target).closest("tr"));
//	})
}

$(document).ready(function() {
	$(document).bind("click", clickHandler);
//	document.addEventListener("click", clickHandler, false);
});