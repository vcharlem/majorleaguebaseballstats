//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require bootstrap-sprockets
//  require ajax_pagination
//= require_tree .

 $(function() { 	

	  $("#players_search input").keyup(
	  	function() {
	    $.get($("#players_search").attr("action"), $("#players_search").serialize(), null, "script");
	    return false;
	  });

  
}); 
