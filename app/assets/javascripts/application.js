//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require bootstrap-sprockets
//  require ajax_pagination
//= require_tree .

 $(function() { 	
	  $(".pagination a").on("click", function() { 
	  			$.getScript(this.href);
	    		return false;
	  	});
	 
	  $("#players_search input").keyup(
	  	function() {
	    	$.get($("#players_search").attr("action"), $("#players_search").serialize(), null, "script");
	    	return false;
	  	});
}); 
