

	     //	jQuery(function() {
	     	    google.load('search', '1');
		     	function OnLoad() {

			       		var searchControl  = new google.search.SearchControl();
		      	   		var localSearch    = new google.search.WebSearch();
		           		searchControl.addSearcher(localSearch);
		           		localSearch.setCenterPoint('New York, NY');
		           		searchControl.draw(document.getElementById('searchresults'));
		           		searchControl.execute('google');

		         };

		         google.setOnLoadCallback(OnLoad);
		//		});;
	           