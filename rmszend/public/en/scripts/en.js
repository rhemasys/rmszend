// JavaScript Document
	$j(function () { 
 		//new ElementMaxHeight();
		
		jQuery('span.field-info').hide();
		
		jQuery('input','form').bind('focus', function(){
			var i = jQuery(this);
			var p = i.parent();
			jQuery('span.field-info',p).fadeIn();
		}).bind('blur', function(){
			var i = jQuery(this);
			var p = i.parent();
			jQuery('span.field-info',p).fadeOut();			
		});
		
	});