// JavaScript Document
var $j = jQuery.noConflict();
var curvedBtn = '.curved-btn,.fm-button';
var baseUrl;

function isset(v){
	return (((typeof (v) == 'undefined') || (v.length == 0)) ? false : true);
}
// ==========================================================================================
$j(function(){
	baseUrl = $j('#site-dir').val();

	if($j.fn.dialog){
		$j('#ajax-loading').dialog({
			autoOpen : false,
			closeOnEscapte : false,
			dialogClass : 'ajax-wait',
			resizeable : false
		});
	}

	$j(document).ajaxStart(function(){
		$j('#ajax-loading').dialog('open');
		var ul = $j('ul', '#ajax-loading');
		ul.children().remove();
		ul.append('<li>Loading ... please wait</li>');
	});

	$j(document).ajaxSuccess(function(evt, request, settings){
		$j('ul', '#ajax-loading').append('<li>Successful Request!</li>');
	});

	$j(document).ajaxStop(function(){
		// setTimeout(function() {
	 	$j('#ajax-loading').dialog('close');
		// }, 50);
	//	makeBtn(curvedBtn);
	});

	gbl.spin('.spinner', 1);
	makeBtn(curvedBtn)
	
	var menu = $j('ul[class $="-menu"],[id $="-menu"]');
	var first = $j('li:first-child', menu).addClass('first');
	var last = $j('li:last-child', menu).addClass('last').removeClass('first');

	$j('li>a', 'ul[class $="-menu"][class !="mega-menu"]').wrap(
			'<span class="menu-span" />');

	var kids = $j('li ul', menu);
	var as = kids.parent('li');

	as.addClass('daddy');
	$j('a:first', as).attr('href', '#').bind('click', function(){
		return false;
	});

	if(window.attachEvent){
		var e = $j('li', menu);
		e.bind('mouseover', function(){
			$j(this).addClass('sfhover');
		}).bind('mouseout', function(){
			$j(this).removeClass('sfhover');
		});
	}

	$j("img.rounded").load(
		function(){
			var item = $j(this);
			item.wrap(function(){
				var rtn = '<span class="' + item.attr('class')
						+ '" style="background:url(' + item.attr('src');
				rtn += ') no-repeat center center; width: ' + item.width()
						+ 'px; height: ';
				rtn += item.height() + 'px;" />';

				return rtn;
			});
			item.css("opacity", "0");
	});
});

var gbl = {
	poison : function(){
		var dt = new Date();
		return dt.getTime();
	},
	
	addCarouselThumbBackground: function(id, thumbDir){
		var re   = /([^\.+])([^\/]+\.[^\.]+)/i; 
        var par  = $j(id).parent();								  
		var divs = jQuery('div.thumb', par);
        $j.each(divs, function(){
			var bg     = jQuery(this).css('background-image');
			var prt    = bg.split('/');
			var len    = prt.length;
			var fil    = prt[len-1];
			var tBg    = thumbDir + '/' + fil;
			var newstr = bg.replace(fil, tBg);
			$j(this).css('background-image',newstr);
	  }) ;
	  divs.addClass('rounded head-thumb');		
	},
	
	albumPreviewOptions : {
		//autoOpen : false,			 
		title : "here",
		modal : true,
		show : "fadeIn",
		hide : "fadeOut",
		zindex : 7000,
		height : 600,
		width  : 900,	
		buttons : {
			'close' : function(){
				$j(this).dialog('close');
			}
		},
		position : ['center', 'center'],
		resizable : false 
			 
	}, 
	getEditorUrl : function(){
		var parm = {};
		parm.domain = 'http://' + document.domain + '/';
		parm.dir = isset(siteDir) ? siteDir : $j('#site_dir').val();
		parm.con = '/backend/editors/ckeditor/browser/connectors/php/connector.php?sitedir='
				+ parm.dir;
		parm.cUrl = '&Connector=' + parm.domain + parm.con + '&nb='
				+ gbl.poison();
		parm.bUrl = '/backend/editors/ckeditor/browser/default/browser.html?sitedir='
				+ parm.dir;

		return parm;

	},

	previewPhotobookAlbum: function(data, path, dialogId){		
		 
		var store  = $j(dialogId); 	 
		var pg     = $j('<div class="pages"></div>');	  
		var ul     = $j('<ul></ul>');
		
		var count  = 0;
		var w      = 580;
		var h      = 380;
		
		$j('.carousel-area', dialogId).html('').append(pg);
		 
		if(data.list.length){
			for(var i in data.list){
				var li = $j('<li>');
				var im = $j('<img>');
				im.attr('src',data.list[i]);
				im.width(w).height(h).css('border', 0);
				li.append(im).css({
					'display' : 'inline',
					'float' : 'left'
				});;
				ul.append(li);
				count++;
			}
			
			var tw = (582 * count) + 'px';
			ul.css({
				'list-style': 'none',
				'width': tw,
				'margin': 0,
				'padding': 0,
				'position': 'relative'
			})	
			
			pg.append(ul);
			
			pg.infiniteCarousel({
				imagePath         : path, 
				transitionSpeed   : 600,
				displayTime       : 8000,
				autoStart         : true, 
			}).css('width',581);		
			
		}else{
			pg.append('no image found');
		}
		
		var stats = data.album['photo_count'] + ' photos in ' + data.album['page_count'] + ' pages';
		
		$j('#add-comment', store).html(data.form); 
		$j('#date', store).html(data.album['Event']['start_at']);
		$j('#stats', store).html(stats);
	 	$j('form', store).formDesigner();  
	 	$j('.andthis_toolbox', store).attr('addthis:url', data.albumUrl);
	 	
		$j('#add-rating',store).html('').raty({
			readOnly : false,
			start    : 5, 
			half	 : true,
			scoreName : 'rating',
			hintList : ['bad', 'poor', 'regular', 'good', 'excellent'],
			path     : data.imagePath
		});
		
		var albumTitle = data.album['title'] + ' in '  + data.album['Event']['location'];
		albumTitle    += ' (' + data.album['Event']['EventType']['title'] + ')';
		
	 	store.dialog('option','title', albumTitle); 
	 	gbl.addAblumComment(data);
	 	
	 	var sndHtm = jQuery('#sound-control').html();
	 	gbl.playMusic(sndHtm);
	 	
	 	jQuery('#li-add-review', '.album-preview').bind('click', function(){
	 		jQuery('.reviews', '.album-preview').toggle();
	 		return false;
	 	});
	 	
	 	jQuery('#li-view-review', '.album-preview').bind('click', function(){
	 		jQuery('#album-comment', '.album-preview').toggle();
	 		return false;
	 	});
	},
	
	addAblumComment: function(data){
		var com = data.album['PortfolioComment'];
		var len = com.length;
		var cArea = $j('#album-comment');
		cArea.html('');
		
		
		if(len){
			var i = 0;
			var contn = $j('<div></div>');
			for(i=0; i<len; i++){
				var spn  = $j('<blockquote class="clearfix"></blockquote>');
				var p    = $j('<p class="comment-text"></p>');
				var usr  = $j('<span class="author"></span');
				var rtn  = $j('<span class="rating"></span>');
				var auth =  com[i]['User']['firstname'] + ' ' + com[i]['User']['lastname'];
				
				rtn.raty({
					readOnly : true,
					start    : com[i]['rating'], 
					hintList : ['bad', 'poor', 'regular', 'good', 'excellent'],
					path     : data.imagePath
				});
				
				p.html(com[i].comment);
				usr.html(auth);
				
				spn.append(p, usr, rtn);
				contn.append(spn);				
			}
 
			cArea.html(contn.html());
		}
	},
	
	bindAlbumViewLinks: function(dialogId, classId, imagePath){ 
		var opts = {
			autoOpen : false,			 
 			title : "Photobook album preview",
			modal : true, 
		 	hide : "fadeOut",
		 	zindex : 7000,
		 	height : 500, 
	 		width  : 800, 
			buttons : {
				'close' : function(){
					$j(dialogId).dialog('close');
				}
			},
			resizable : false ,
			position : ['center', 'center']
 	 
		};
  
			 
		 jQuery(dialogId).dialog(opts);
		 	
 		 jQuery(classId).bind("click", function(){ 
 			jQuery(dialogId).dialog('open');
			var i   = jQuery(this);
			var url = i.attr("href");
			
			jQuery(classId).removeClass("active");
			i.addClass("active");
			var cache = i.data('album');
			if(cache){ 
				gbl.previewPhotobookAlbum(cache, imagePath, dialogId);				 
			}else{
				$j('.carousel-area', dialogId).html('');
				jQuery.get(url, {}, function(res, status){
					i.data('album', res);
					gbl.previewPhotobookAlbum(res, imagePath, dialogId);
				});
			}
		 
			return false;
			
		});		
	},
	
	makeEditor : function(obj, hgt){
		var parm = gbl.getEditorUrl();
		document.cookie = 'sitedir=' + parm.dir;

		var def = {
			filebrowserBrowseUrl : parm.bUrl + parm.cUrl,
			filebrowserImageBrowseUrl : parm.bUrl + parm.cUrl + '&Type=Image',
			filebrowserFlashBrowseUrl : parm.bUrl + parm.cUrl + '&Type=Flash',
			filebrowserUploadUrl : parm.con + '&command=QuickUpload&type=File',
			filebrowserImageUploadUrl : parm.con
					+ '&command=QuickUpload&type=Image',
			filebrowserFlashUploadUrl : parm.con
					+ '&command=QuickUpload&type=Flash'

		};

		def.height = hgt;

		obj.height(hgt).ckeditor(def);
	},

	spin : function(selector, mn){
		mn = isset(mn) ? mn : 0;
		$j(selector)
				.each(
						function(i, o){
							var inp = $j(o);
							var par = inp.parent();
							par.css('white-space', 'normal');

							var btn = '<div class="spinner-div"><button class="spinner-up">&#9650;</button>';
							btn += '<button class="spinner-down">&#9660;</button></div>';
							par.append(btn);

							$j('.spinner-up', par).before(inp);
							$j('button[class^="spinner-"]', par)
									.bind(
											'click',
											function(){
												var btn = $j(this);
												var val = inp.val() * 1;
												var stp = 1;
												var inc = $j('#step');

												if(inc.length
														&& inp
																.hasClass('increment') == false){
													var stp = inc.val() * 1;
												}
												if(btn.hasClass('spinner-up')){
													inp.val(val + stp);
												}else{
													var ls = val - stp;
													if(ls < mn){
														ls = mn;
													}
													inp.val(ls);
												}
												return false;
											});
						});
	},

	initImageZoom : function(id, img){
		jQuery(id).addimagezoom({
			zoomrange : [3, 20],
			magnifiersize : [350, 350],
			magnifierpos : 'right',
			largeimage : img
		});
	},

	fck : function(name){
		var oFCKeditor = new FCKeditor(name);
		oFCKeditor.BasePath = "/backend/editors/fckeditor/";
		oFCKeditor.Width = 450;
		oFCKeditor.Height = 250;
		oFCKeditor.ReplaceTextarea();
	},

	doDate : function(e){
		$j(e).datepicker({
			dateFormat : 'yy-mm-dd',
			changeMonth : true,
			changeYear : true,
			showButtonPanel : true,
			closeText : 'Close',
			gotoCurrent : true,
			numberOfMonths : [1, 3],
			showCurrentAtPos : 1,
			appendText : ' (yyyy-mm-dd)',
			showWeek : true,
			stepMonths : 3,
			yearRange : '-05:+05'
		});
	},

	playMusic: function(content){ 
		jQuery('#toggle-music').bind('click', function(){
			var chk = jQuery(this).attr('checked'); 
			if(chk){
				jQuery('#sound-control').html(content);
			}else{
				jQuery('#sound-control').html('');
			}
		});
	},
	
	doDateTime : function(e){
		var cru =$j(e).val();
		$j(e).dateplustimepicker({
			dateFormat : 'yy-mm-dd',
			changeMonth : true,
			changeYear : true,
			//showButtonPanel : true,
			//closeText : 'Close',
			gotoCurrent : true,
			numberOfMonths : [1, 3],
			showCurrentAtPos : 1,
			appendText : ' (yyyy-mm-dd)',
			showWeek : true,
			stepMonths : 3,
			yearRange : '-05:+05',
				
			timeFormat : 'hh:mmtt',
			altField : '#testAlt',
			altTimeFormat : 'h:m',
			defaultTime : 0,
			minTime : 0,
			maxTime : {
				hours : 24
			},
			step : {
				minutes : 5
			},
			show : 'fold',
			showButtonPanel : true
		});
	}

};

function makeBtn(cls){
	var arr = $j(cls);

	arr.each(function(){
		var color;
		var aln;
		var e = $j(this);
		var txt = e.text();
		var cls = e.attr('class');

		if(txt != ''){
			var t = txt.toLowerCase();

			switch(t){
				case 'submit':
				case 'update':
				case 'ok':
					color = 'green';
					aln = 'alignRight';
					break;
				case 'cancel':
				case 'no':
					color = 'red';
					aln = 'alignLeft';
					break;
				default:
					color = cls;
					aln = 'alignRight';

			}

			var str = '<i></i><span><span></span><i></i>' + txt + '</span>';

			e.html(str);
			e.attr('class', 'btn ' + aln);
			e.addClass(color);

			e.parent('div').css('text-align', 'center');
		}
	});
}