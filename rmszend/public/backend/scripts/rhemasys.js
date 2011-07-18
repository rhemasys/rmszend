// JavaScript Document
var $j = jQuery.noConflict();
var dirListUrl = '/master/directory-listing/';
$j(function(){
	// var lastsel;
	// var noRow = rms.initDialog('No Selection', 'Please select row');
	makeBtn(curvedBtn);
	// =========== Module menu animation ==================
	$j('#module-nav').jqDock({
		'align' : 'top',
		'labels' : 'bc' ,
		'fadeIn' : 400, 
		//'flow': true,
		'size' : 24		
	});

	// ============ multiselect ===========================
	if($j.fn.multiselect){
		$j('.multiselect').multiselect({
			dividerLocation : 0.5
		});
	}

	var pageTabs = $j("div[id$='tabs']");
	
	pageTabs.each(function(){
		var cur = $j(this);
		var par = cur.parents(':first[id=admin-main]');
		var checkBox = $j('input#disabletabcache', par);
		$j('.tab-cache').show();
		cur.tabs({
			cache : true,
			load : function(){
				// rms.activateTips("a.clue-tips");
				// rms.setToolMenu();
			}
		});	
		
		
		checkBox.bind('click', function(){
			var obj = $j(this);
			var v   = (obj.attr('checked') == true);
			cur.tabs( "option", "cache", v); 
			if(v == false){
				var selected = cur.tabs('option', 'selected');
				cur.tabs('load', selected);
			}
		}); 
	});
 
	$j('#quick_menus a').each(function(){
		var i = $j(this);		
		var code = $j('ins', i).attr('alt');
		var ajx = parseInt(code);
		var url = i.attr('href');
		
		if(ajx && '#' != url){
			i.bind('click', function(){ 
				$j(rms.messageDiv).load(url, {}, function(data, status){
					$j(rms.messageDiv).show(); 
				});
				return false;
			});
		}
	});
	
	$j('button#import-data').live('click', function(){
		var i    = $j(this);
		var frm  = i.parents('form:first');
		var data = frm.serializeArray();
		var url  = frm.attr('action'); 
		
		$j(rms.messageDiv).load(url, data, function(){
			$j(rms.messageDiv).show(); 
		}); 
		 
		return false;
	});
	
	$j('a[id^="feed_"]','#affilate-setup').bind('click', function(){
		var url     = $j(this).attr('href'); 
		$.ajaxSetup({
			  timeout: 60000000
		});
		$j(rms.messageDiv).load(url, {}, function(data, status){
			$j(rms.messageDiv).show(); 
		});		
		
		return false;
	});
	
	$j('#admin-main, #admin-menu').slideDown();
});

function addGridTab(table){
	$j('#tabs').tabs('add');
	return false;
}

// =================================================================================
var rms = {
	node : {},
	messageDiv  : '#message-div-area',
	tipParam : {
		cluetipClass : 'rhema',
		arrows : false,
		dropShadow : false,
		sticky : true,
		closePosition : 'title',
		width : 750,
		height : 550,
		activation : 'click',
		cluezIndex : 1005,
		closeText : '<span class="ui-icon ui-icon-closethick" style="float:right"></span>',
		onShow : function(){
			var tip = $j('#cluetip');
			tip.draggable({
				handle : 'h3'
			});
			var breadth = 750;
			var maxh = 550;
			$j('#cluetip-title').addClass('ui-widget-header ui-corner-all');
			$j('#cluetip-outer').addClass(
					'ui-widget ui-widget-content ui-corner-all');

			var height = tip.height();
			var inHeight = $j('#cluetip-inner').height();

			if(maxh < inHeight){
				tip.height(maxh);
				$j('#cluetip-outer').height(maxh);
				$j('#cluetip-inner').height(maxh - 50).css('overflow', 'auto')
						.width(breadth - 40);
			}else{// (maxh > inHeight){
				$j('#cluetip-outer').height('auto');
				$j('#cluetip-inner').height('auto');
			}
			// rms.bindRelatedLinks();
		},
		ajaxSettings : {
			dataType : 'json',
			global : false
		}
	},

	equalHeights : function(divs){
		var m = 0;
		divs.each(function(i, o){
			var v = $j(o);
			var w = v.height();
			var h = v.css('height');

			if(w > m){
				m = w;
			}
		});

		divs.height(m);
	},
	setupMenuTree : function(sel){
		var divs = $j(sel);
		divs.each(function(i, obj){
			var cur = $j(this);
			if(!cur.hasClass('tree')){
				$j("li", cur).each(function(){
					var anc = $j(this);
					anc.attr('id', 'temp');
					var a = $j('#temp > a');
					var id = 'li-' + a.attr('id');

					anc.attr('id', id);
					a.prepend('<ins>&nbsp;</ins> ');
				});

				$j(cur).tree(
						{
							ui : {
								theme_name : "checkbox",
								animation : 0
							},
							rules : {
								multitree : 'all'
							},
							plugins : {
								checkbox : {},
								contextmenu : {}
							},
							callback : {
								onload : function(tree){
									tree.open_all();
								},
								onmove : function(node, ref_node, type, tree,
										rb){
									rms.updateTree('move', node, ref_node,
											type, tree, rb);
								},
								oncreate : function(node, ref_node, type, tree,
										rb){
									rms.node = node;
									rms.updateTree('create', node, ref_node,
											type, tree, rb);
								},
								ondelete : function(node, tree, rb){
									rms.updateTree('delete', node, '', '',
											tree, rb);
								},
								onrename : function(node, tree, rb){
									rms.updateTree('rename', node, '', '',
											tree, rb);
								}
							}
						});
			}
		});
	},

	updateTree : function(action, node, ref_node, type, tree, rb){
		var parm = {};
		var url = $j('#menu-url').val();
		parm.node = $j(node).attr('id');
		parm.task = action;
		parm.nodeText = $j.trim($j(node).find('a:first').text());
		parm.refNode = ref_node ? $j(ref_node).attr('id') : '';
		parm.rootType = $j('#root_type').val();
		parm.root_id = $j('#root_id').val();
		parm.type = type;

		if('create' == action){
			$j.post(url, parm, rms.updateMenu, 'json');
		}else{
			$j.post(url, parm, function(){
			}, 'json');
		}
	},

	initTree : function(sel){
		$j(sel).tree({
			ui : {
				theme_name : 'default',
				animation : 0
			},
			plugins : {
				cookie : {
					prefix : 'accord'
				}
			}
		});

		$j('.table-name').bind('click', function(e){
			var index = null;
			var o = $j(this);
			var title = this.innerHTML;
			var t = $j('#tabs').tabs();

			var opn = $j('#menu-select li a').each(function(){
				var li = $j(this);
				var txt = li.text();
				if(title == txt){
					index = li.attr('href');
				}
			});

			if(index){
				t.tabs('select', index);
			}else{
				var u = this.href ;//+ '/width/646/isAdmin/1';
				var l = t.tabs('length');
				t.tabs('add', u, title, l);
				t.tabs('select', l);
				t.tabs('url', l, u);
			}

			return false;
		});
	},

	showFields : function(data){
		$j('#message').hide();
		var frm = data.form;
		var man = data.mandatory;

		$j('#field-edit-div').remove();
		$j('.help-tab').append(frm);
		$j('#field-edit-div').dialog({
			width : 520,
			resizeable : false,
			buttons : {
				'update' : function(){
					rms.saveFieldForm('field-form');
				},
				'close' : function(){
					jQuery('#field-edit-div').remove();
				}
			}
		});

		jQuery('.multiselect').multiselect({
			dividerLocation : 0.5
		});

		for( var i = 0; i < man.length; i++){
			var manId = '#field_id-' + man[i];
			$j(manId).attr('disabled', true).attr('checked', true);
		}
		return false;
	},

	poison : function(){
		var dt = new Date();
		return dt.getTime();
	},

	saveFieldForm : function(formid){
		var frm = $j('form[id=' + formid + ']');
		var data = frm.serialize();
		var url = frm.attr('action');
		$j.post(url, data, function(){
			// rms.displayMessage('saved','message');
		});
	},

	closeDivs : function(prefix){
		var d = $j('div[id^="' + prefix + '"]').hide('slow');
		;
		d.each(function(){
			$j(this).hide();
		});
	},
	initDialog : function(header, content){
		var obj = $j('<div></div>').html(content).dialog({
			autoOpen : false,
			modal : true,
			position : 'center',
			show : 'slide',
			width : 500,
			height : 150,
			title : header
		});
		return obj;
	},
	restoreRow : function(gridId){
		var gr = $j(gridId).jqGrid('getGridParam', 'selrow');
		$j(gridId).jqGrid('restoreRow', gr);
	},

	updateGridImages : function(frmId, rowdata, firstTime, gsr){
		var imgs = $j('input[id^="image"],input[id^="thumb"],span.view_span', frmId);
		imgs.each(function(o, i){
					var o = $j(this);
					if(firstTime){
						o.before('<a class="image-browser curved-btn" href="#">Search</a>');
					}
					if(gsr){
						var n = o.attr('name');
						var i = rowdata[n];
						o.siblings('img').remove();
						o.after(i);

						var src = $j(i).attr('src');
						$j(i).css('float', 'right');
						o.attr('size', 200).val(src).attr('readonly', true);
					}
				});
	},

	updateDropdownListWithHiddenValues : function(frmId, rowdata, gsr){
		if(gsr){
			var sels = $j('select[id$="_id"], select[id="author"]', frmId);
			var tr = $j('tr[id="' + gsr+'"]', frmId);
			sels.each(function(){
				var s = $j(this);
				var i = s.attr('id');
				var str = rowdata[i];
				var v = $j(str).val();
				//var v = $j('#hidden_' + i, tr).val();
				s.val(v);
				//$j('option[value="'+v+'"]', s).attr('selected','selected');
			});
		}
	},
	prepareForm : function(frmId, gridId, gd){
		var rowdata = {};
		var allFields = $j(':input', frmId);		
		
		allFields.filter('input[type="text"]').addClass('text'); 
		allFields.filter('[id="id"]').parents('tr:first').hide(); //attr('readonly', 'readonly');
		var spinInputs = allFields.filter('[id="sequence"],[id="row"],[id="column"]');
		
		if(spinInputs.length){
			gbl.spin(spinInputs);
		}	
		
		var txs  = allFields.filter('textarea');		 
		var edt  = txs.filter('[id="content"],[id="comment"]');//  show ckEditor
		if(edt.length){
			gbl.makeEditor(edt, 350);
		}
 
		var gsr = $j(gridId).jqGrid('getGridParam', 'selrow');
		var selects = allFields.filter('select'); 
		var data = ['','','']; 
		
		rowdata = jQuery(gridId).jqGrid('getRowData', gsr);
			
		if(rowdata.m_module){
			var ctl = rowdata.m_controller;
			 
			data[0] = rowdata.m_module;
			data[1] = rowdata.m_controller;
			data[2] = rowdata.m_action;
			
			rms.initModule(frmId, data, allFields);
		  
			if(rowdata.m_controller){
				rms.initController(frmId, data, allFields);
			}	
			
		}
 
		rms.updateDropdownListWithHiddenValues(frmId, rowdata, gsr);			 
		rms.updateGridImages(frmId, rowdata, true, gsr);
	 
 
		selects.filter('[id="m_module"]').bind('change', function(){			 
			data[0] = $j(this).val();
			data[1] = '';
			rms.initModule(frmId, data, allFields);
		});

		selects.filter('[id="m_controller"]').bind('change', function(){ 
			data[1] = $j(this).val();
			data[2] = rowdata.m_action;
			rms.initController(frmId, data, allFields);
		});
 
		rms.updateCheckBox(allFields, rowdata);
		 
		$j('a.image-browser', frmId).bind( 'click', function(){
				$j('#div-browser').remove();
				var admin = 0;
				var eparm = gbl.getEditorUrl();
				var div = document.createElement('div');
				var caller = $j(this).siblings('input').attr('id');
				var url = eparm.bUrl + eparm.cUrl + '&Type=Image&callerId='
						+ caller + '&dlg=div-browser&admin=' + admin
						+ '&sitedir=' + eparm.dir;
	
				// window.open(url);
				div.title = 'Image Browser';
				div.id = 'div-browser';
	
				var frm = document.createElement('iframe');
				frm.src = url;
				frm.id = 'browser-frame';
	
				div.appendChild(frm);
				$j('body').append(div);
				$j(div).dialog({
					width : 750,
					modal : true,
					buttons : {
						'close' : function(){
							$j(this).remove();
						}
					}
				});
	
				return false;
			}).parent('td').removeAttr('style');

/*		if($j('#related_item', frmId).length > 0){
			rms.setupRelatedDocuments();
		}
*/
 		makeBtn(curvedBtn);
 		var colInputs = allFields.filter('[id="color"]');
 		colInputs.jPicker({ 
 			window: { 
 				expandable: true 
 			},
 			position: {
 				x : "right",
 				y : "bottom"
 			},
 			images :{
 				clientPath : '/backend/scripts/jpicker/images/'
 			},

 			updateInputColor: false
 		});

	},

	updateCheckBox: function(allFields, rowdata){
		var boolFields = allFields.filter('[id^="is_"]');
		var regex      = /(ok.png)$/i;
			
		boolFields.each(function(){
			var b   = $j(this);
			var i   = b.attr('id');
			var v   = rowdata[i];
			var s   = $j(v).attr('src'); 
			
			
			if(regex.test(s)){
				b.attr('checked', 'checked');
			}
		});		
	},
	
	doAfterButtonClick : function(btn, frmId, row, gridId){
		var rowdata = jQuery(gridId).jqGrid('getRowData', row);
		var allFields = $j('input:checkbox', frmId);
		
		rms.updateDropdownListWithHiddenValues(frmId, rowdata, row);
		rms.updateGridImages(frmId, rowdata, false, row);
		rms.updateCheckBox(allFields, rowdata);
	},
	afterShowForm : function(pos, frmId, data){
		/*
		 * var imgs = rms.getGridImages(frmId); imgs.each(function() { var i =
		 * $j(this); var disp = $j('#img_' + i.attr('id')); var tg =
		 * i[0].tagName.toLowerCase(); var file = (tg == 'input') ?
		 * i.attr('value') : i.text(); disp.attr('src', file); });
		 */
	},

	initController : function(frmId, data, fields){ 
		var parm  = {};
		var mod   = data[0];
		var val   = data[1];
		var child = data[2]; 
		parm.m = mod;
		parm.c = val;
		parm.d = 0;
		parm.a = 1;
		  
		var action  = fields.filter('select[id="m_action"]');
		var action2 = fields.filter('input[id="m_action"]');
		
		if(val != '' && val != 'null'){
			if(action.length){
				$j.post(dirListUrl, parm, function(data, status){
					rms.resetSelect(action); 
					for( var i in data){
						var opt = $j(document.createElement('option'));
						action.append(opt);
						opt.val(i).text(data[i]);
						if((child == i)){
							opt.attr('selected', 'selected');
						}
					}
				}, 'json');
			}else{
				action2.val(child);
			}
		}

	},

	initModule : function(frmId, data, fields){
		var parm  = {};
		var val   = data[0];
		var child = data[1];
		
		var sel = fields.filter('select[id="m_controller"]'); 
		parm.m = val;
		parm.d = 1; 

		if(val != '' && val != 'null' && sel.length){
			$j.post(dirListUrl, parm, function(data, status){ 
				var action  = fields.filter('select[id="m_action"]');
				var action2 = fields.filter('input[id="m_action"]');

				rms.resetSelect(sel);
				for( var i in data){
					var opt = $j(document.createElement('option'));
					sel.append(opt);
					opt.val(i).text(data[i]);
					if(child == i){
						opt.attr('selected', 'selected');
					}
				}

				if(action.length){
					rms.resetSelect(action);
				}else if(action2.length){
					// action2.val('');
				}

			}, 'json');
		}
	},

	resetSelect : function(sel){
		sel.children().remove();
		var opt = $j(document.createElement('option'));
		sel.append(opt);

		opt.val('').text('select');
	},

	cleanUpForm : function(frmId){
		var cnt = $j('#content', frmId);
		if(cnt.length){
			CKEDITOR.instances.content.destroy();
			// FCKeditorAPI.GetInstance('content').destroy();
		}

	},

	showTaskStatus: function(resp, data){ 
		var retn    = $j.parseJSON(resp.responseText);
		var pass    = (retn.pass * 1) ? true : false;		
		 
		return [pass , retn.message, 1];;
	},
	
	formatErrorMsg: function(evt){		 		
		return 'an server error occurred';
	},	
	
	showGridMessage : function(resp, param){
		// var pos = $j('.topinfo');
		// var msg = resp.responseText;
		// $j('.tinfo').show('slow');
		// pos.addClass('success');
		// pos.html(msg);
	},

	updateMenu : function(data, status){
		var ins = rms.node;
		var id = 'li-menu-' + data.node_id;
		$j(ins).attr('id', id);
	},

	updateTreeNode : function(node, parm){

	},

	watchFold : function(elm){
		var e = $j(elm);
		var kids;
		if('siblings' == e.attr('title')){
			kids = e.siblings();
		}else{
			kids = e.parent().siblings();
		}
		var c = e.attr('class');
		if(e.hasClass('open')){
			kids.slideUp();
			e.removeClass('open');
			e.addClass('close');
		}else{
			kids.slideDown();
			e.addClass('open');
			e.removeClass('close');
		}
	},

	activateTips : function(sel){
		// =============== clue tips ==========================
		if($j.fn.cluetip){
			$j(sel).cluetip({
				// arrows: true,
				dropShadow : true,
				dropShadowSteps : 2,
				// showTitle: false,
				cluetipClass : 'rhema',
				width : 500,
				sticky : true,
				positionBy : 'mouse',
				closePosition : 'title',
				titleAttribute : 'title',
				leftOffset : 100,
				topOffset : 30,
				activation : 'click',
				cluezIndex : 2000,
				// ajaxCache: false,
				closeText : '<span class="ui-icon ui-icon-closethick"></span>',
				onShow : function(ct, c){
					$j(ct).draggable();
					$j(ct).addClass('ui-widget ui-widget-content ui-corner-all');
					$j('#cluetip-title').addClass('ui-widget-header ui-corner-all');
				},
				ajaxSettings : {
					global : false
				}
			});
		}
	},

	setToolMenu : function(){
		$j('#accordion-tools').accordion({
			clearStyle : true,
			fillSpace : true
		});
	},

	setupIns : function(){
		$j('ins.remove').die().live('click', function(){
			var itm = $j(this); 
			var par = '#' + itm.attr('title');
			var id = itm.parent();
			var ul = id.parent();
			var sibs = id.siblings();
			if(sibs.length < 2){
				$j('.fixed', ul).show();
			}

			$j(par).append(id);
			$j('ins.remove', id).hide();
		});

		$j('ins.delete').die().live('click', function(){
			var e = $j(this); 
			var li = e.parent();
			var num = li.siblings('li').length;

			if(num < 2){
				ul = li.parent();
				$j('li.fixed', ul).show();
			}

			li.remove();
		});

		$j('.sortable').live('sortupdate', function(evt, ui){
			var ul = $j(this);
			var kids = ul.children();
			var blank = ul.children('.fixed');
			var cnt = kids.length;
			if(cnt > 1){
				$j(blank).fadeOut();
			}else{
				$j(blank).fadeIn();
			}
		});
	},
	
	makeListSortable: function(items, parnt){
		items = $j(items, parnt);
		items.sortable('destroy');
		items.sortable({
			connectWith : '.sortable',
			cancel : '.fixed',
			cursor : 'move', 
			opacity : 0.6,
			scrollSensitivity: 40,
			scrollSpeed: 40,
			// revert: true,
			tolerance : 'pointer',
			update : function(evt, ui){
				$j('ins.remove', '.sortable').show('slow');
			},

			receive : function(evt, ui){
				var itm = ui.item;
				var cur = $j(this);
				sender = ui.sender;
			}
		});	
		
	},
	
	makeSectionsSortable : function(bdy, parnt){
		
		bdy = $j(bdy, parnt);		
		bdy.sortable('destroy'); 
		
		bdy.sortable({
			handle : '.div-sort-handle',
			cursor : 'move',
			opacity : 0.5,
			containment : bdy,
			start : function(evt, ui){
				var itm = ui.item;
				itm.addClass('div-sorting');
			},
			stop : function(evt, ui){
				ui.item.removeClass('div-sorting');
			}

		});
 
	},

	setupLayout : function(content){
		var frm = content.form;
		var title = content.title;

		$j('#edit-layout').remove();
		$j('#admin-content').append(frm);
		$j("#lay-accordion").accordion();

		var lay = $j('#edit-layout');
		lay.attr('title', title);

		lay.dialog({
			width : 700,
			resizeable : false,
			buttons : {
				'update' : function(){
					var url = jQuery('#layout-form').attr('action');
					var sxns = jQuery('div[id^=\"section-\"]');
					var layout = [];
					var test = jQuery('.sortable', sxns).sortable('toArray');

					layout[0] = '';
					for( var i = 0; i < sxns.length; i++){
						var cur = jQuery(sxns[i]);
						var curId = cur.attr('id');
						var parts = curId.split('-');
						var sxn = parseInt(parts[1]);
						layout[sxn] = jQuery('.sortable', cur).sortable(
								'toArray');
					}

					jQuery.get(url, {
						'section[]' : layout
					}, function(data, status){
						data.title = title;
						rms.setupLayout(data);
					}, 'json');

				},

				'reset' : function(){
					var parm = {};
					parm.template_id = $j('#ctemp').val();
					var url = $j('#layout-form').attr('action');
					url = url.replace('savelayout', 'reset');
					$j.post(url, parm, function(data, status){
						data.title = title;
						rms.setupLayout(data);
					}, 'json');

				},

				'close' : function(){
					$j('#edit-layout').remove();
				}
			}
		});

		jQuery('.layout-tree, .sortable').sortable({
			cancel : '.no-sort',
			connectWith : '.sortable',
			cursor : 'move',
			cursorAt : 'right',
			opacity : 0.6,
			zIndex : 7000
		});

		jQuery('.sortable').live('sortupdate', function(){
			var ul = jQuery(this);
			var sibs = ul.children('li');
			var cnt = sibs.length;
			var emp = jQuery('li.no-sort', ul);

			if(cnt > 1){
				emp.hide('slow');
			}else{
				emp.show('slow');
			}
		});

		jQuery('ins.remove').live('click', function(){
			var itm = jQuery(this);
			var parId = itm.attr('parent');
			var par = jQuery('#' + parId);
			var li = itm.parent();
			var ul = li.parent();
			var sibs = ul.children();
			var emp = jQuery('li.no-sort', ul);

			if(sibs.length == 2){
				emp.show();
			}

			par.append(li);
			itm.hide();
		});

		jQuery('ins.delete').live('click', function(){
			var itm = jQuery(this);
			var par = itm.parent();
			var ul = par.parent();
			var sibs = ul.children().length;

			if(sibs == 2){
				jQuery('li.no-sort', ul).show();
			}
			itm.parent().remove();

		});

	},

	initSearch : function(){
		$j('#searchField').live('change', function(){
			var txt = $j(this).val();
			var pattern = /_at$/i;
			if(pattern.test(txt)){
				$j('#by-keyword').datepicker({
					defaultDate : -7,
					dateFormat : 'yy-mm-dd',
					yearRange : '-05:+00',
					buttonImageOnly : true,
					buttonImage : '/images/calender.png',
					changeMonth : true,
					changeYear : true,
					closeText : 'Close',
					showButtonPanel : true
				});
			}else{
				$j('#by-keyword').datepicker('destroy');
			}
		});

		$j('#front-search-button').live('click', function(){
			rms.searchDatabase('#search-form', 1, '#search-1');
		});
	},

	searchDatabase : function(frmid, pageNum, pos){

		var divid = '#search-tabs';
		var frm = $j(frmid);
		var url = frm.attr('action');
		var data = $j(frmid).serialize();

		rms.resetTabs(divid);
		data.page = pageNum;
		$j.post(url, data, function(result, status){
			var main = result.main;
			var pager = result.pager;

			$j(pos).html(main);
			if(pager != ''){
				$j('.result-pager').show();
				$j('#doc-pager').html(pager);
				rms.hoverDocumentView(divid);
				rms.linkPager(divid);
			}
		}, 'json');
	},
	hoverDocumentView : function(divid){
		var as = $j('a.clue-tips');
		as.cluetip(rms.tipParam);
	},
	resetTabs : function(id){
		$j(id).tabs('destroy');
		$j(id).tabs({
			cache : true
		}).bind('tabsload', function(event, uii){
			var divid = '#search-tabs';
			// rms.linkPager(divid);
			rms.hoverDocumentView(divid);
		});
	},
	linkPager : function(divid){
		// =========================== Pager navigation controller
		// ============================
		var pag = $j('a[id ^= "page-"]');
		for( var k = 0; k < pag.length; k++){
			var itm = $j(pag[k]);
			itm.bind('click',
					function(){
						$j('a[id ^= "page-"]').removeClass('ui-state-active')
								.addClass('ui-state-default');
						var cur = $j(this);
						var pageNum = parseInt(cur.text());
						var url = cur.attr('rel');
						var tabTitle = cur.attr('id');
						var index = rms.findTabByTitle(divid, tabTitle);
						cur.removeClass('ui-state-default').addClass(
								'ui-state-active');
						if(-1 == index){
							index = pageNum - 1;
							var tabId = 'search-' + index;
							$j(divid).tabs('add', url, tabTitle, index);
						}

						$j(divid).tabs('select', index);
					});
		}
	},
	findTabByTitle : function(tabId, title){
		var sel = tabId + ' li a';
		var lis = $j(sel);
		var index = -1;
		for( var i = 0; i < lis.length; i++){
			var txt = lis[i].text;
			if(title == txt){
				index = i;
				break;
			}
		}
		return index;
	},

	setupRelatedDocuments : function(){
		$j('#finder,.temp-div').remove();
		var itm = $j('#related_item', '.FormGrid');
		var lst = itm.val();
		var field = '';
		$j .get( baseUrl + '/help/index/finder',
						{},
						function(data, status){
							field += '<div class="temp-div"><div id="rel-docs" class="div-related ui-widget-content">';
							field += lst;
							field += '</div><div id="search-doc" class="form-button">';
							field += '<a href="#" title="find document" id="doc-search">search</a></div>';
							field += '<div class="form-info-div">Click a related item to delete.</div></div>';
							itm.before(field);
							$j('body').append(data);
							$j('#finder').draggable();
							$j('#doc-keyword')
									.autocomplete(
											baseUrl + '/help/index/suggest',
											{
												multiple : true,
												extraParams : {
													type : function(){
														return $j(
																'#search-type')
																.val();
													}
												},
												formatItem : function(data, i,
														n, value){
													var ret = data[1];
													return ret;
												},
												formatResult : function(data,
														value){
													return data[1];
												}
											});

							$j('#rel-docs li').live('click', function(){
								var li = $j(this);
								var par = li.parent();
								var li = li.remove();

								if(0 == par.children().length){
									par.remove();
								}

								var html = $j('#rel-docs').html();
								$j('#related_item').val(html);
							});

							$j('#doc-search').live('click', function(){
								$j('#finder').show();
								return false;
							});
							$j('#close-finder').live('click', function(){
								$j('#finder').hide();
								return false;
							});

							$j('#add-doc').live('click', function(){
								var rel = $j('#doc-keyword').val().split(',');
								var div = $j('#rel-docs');
								var ul = $j('ul', div);

								if(0 == ul.length){
									ul = document.createElement('ul');
									div.html('');
									div.append(ul);
								}
								var added = 0;
								for( var i = 0; i < rel.length; i++){
									var li = document.createElement('li');
									var txt = $j.trim(rel[i]);
									if(txt != ''){
										li.innerHTML = txt;
										$j(ul).append(li);
										added++;
									}
								}

								if(0 == added){
									div.html('');
								}

								$j('#doc-keyword').val('');
								$j('#finder').hide();
								var html = $j('#rel-docs').html();
								$j('#related_item').val(html);

								return false;
							});
							$j('#finder').parent().css('white-space', 'normal');
						}, 'json');
	},
	
	buildAccordionItems: function(arr){
		var temp  = $j('<div></div>');
		var types = layoutItems.types; //layout items preloaded from server as json data
		for(var type in arr){
			var typId = types[type]['id'];
			var title = types[type]['title'];
			var h3    = $j('<h3><a href="#"></a></h3');  
			var cont  = $j('<div class="acc-section"></div>');
			$j('a', h3).text(title);
			for(var cat in arr[type]){
				var div = $j('<span class="sub-section"><label></label></span>');
				var ul = $j('<ul></ul');
				$j('label', div).text(cat); 
				
				for(var id in arr[type][cat]){
					var table = types[type]['code'];
					var rel   = layoutItems.tipurl + '/' + table + '/' + id;
					var title = arr[type][cat][id]['title'];
					var ins = '<li><a href="#" class="clue-tips"><ins></ins></a>';
					ins    += title +'<ins class="remove" style="display:none"></ins></li>'; 
					var cls = 'item_' +typId + '-' + id;
					//str_replace(' ','_', strtolower($item . '-' . $category));
					var ulTitle = (typId + '-' + cat).toLowerCase().replace(/\s+/g,'-');
					var li      = $j(ins);
					li.attr('id', cls);
					$j('a', li).attr('rel', rel).attr('title', title);
					$j('.remove', li).attr('title', ulTitle);
					ul.append(li).attr('id',ulTitle);
				}
				div.append(ul);
				cont.append(div).attr('id', type).addClass('sort-item');				
			}
			temp.append(h3,cont);
		}
		
		return temp;
	},
	
	buildLayoutBody: function(resp){
		var global = layoutItems;
		var data   = resp['templateData'];
		var page   = resp['pageData'];
		var sxnOrd = resp['sectionOrd'];
		
		var retn   = $j('<div></div>');
		
		if(sxnOrd.length){
			for(var i in sxnOrd){
				var sxnId     = sxnOrd[i]*1; 
				var sxnCount  = isset(page.layout.items[sxnId]) ? page.layout.items[sxnId].length : 0; //todo
				var divId     = 'div-sxn-' + sxnId;
				var mainDiv   = $j('<div class="layout-section ui-corner-all"></div');
				var spanId    = 'count-' + sxnId;
				mainDiv.attr('id', divId);
				var labelStr = '<label><ins class="fold open" style="float:left"></ins>';
	            labelStr    += '<span class="div-sort-handle">' + data.sections[sxnId]['title']; 
	            labelStr    += '<span id="' +spanId + '" class="item-count">' + sxnCount;
	            labelStr    += '</span></span></label>'; 
				
				mainDiv.append(labelStr);
				
				var sxnSpan = $j('<span></span>');
				var ul      = $j('<ul class="sortable"></ul>');
				ul.attr('id', 'sxn-' + sxnId);
				
				var hasItems = true;
				
				if(sxnCount){				
					for(var seq in page.layout.items[sxnId]){
						for(var type in page.layout.items[sxnId][seq]){
							var combo = page.layout.items[sxnId][seq][type];
							var arr   = combo.split('_',3);			
							var itemId = arr[0];
							var rel   = layoutItems.tipurl + '/' + layoutItems.types[type]['code'] + '/' + itemId ;
							var li    = $j('<li><a href="#" class="clue-tips"><ins class="saved"></ins></a><ins class="delete"></ins></li>');
							var liId  = 'item' + seq + '_' + type + '-' + itemId;
							
							var code = global.types[type]['code'];
							var itemCat = global.bycat[code][itemId];
							
							var details = global.items[type][itemCat][itemId];
							var title = details['title']; //todo
							var color = '#' + layoutItems.types[type]['color'];
							li.attr('id', liId);
							$j('ins:first', li).css('background', color);
							$j('a', li).after(title).attr('rel', rel).attr('title', title);
							ul.append(li);
						}
					}
				}else{
					hasItems = false;	
				}
				
				var blankId = 'blank_0-' +sxnId;
				var blank   = '<li class="fixed"><a href="#"><ins></ins></a>Blank</li>';
				var bLi     = $j(blank);
				bLi.attr('id', blankId);
				
				if(hasItems){
					bLi.css('display', 'none');
				}
				ul.append(bLi);
				sxnSpan.append(ul);
				mainDiv.append(sxnSpan);
				retn.append(mainDiv);
			}
		}else{
			var nosxn = $j('<p></p>');
			nosxn.text(data.nosection);
			retn.append(nosxn);
		}
		
		//$j('#layout-body').html(retn.html());	    
		//$j('#frm-page_id').val(page.page_id);
		//$j('#frm-template_id').val(page.template_id);
		return retn;
	},
	
	buildPageDesc : function(data){
		var desc = $j('p.page-desc', '#layout-shell');
		desc.text(data.description);
		return desc;
	},
	
	setPageData : function(url, gsr, grid, fwd){
		var parm		   = {};
		var gridId         =  '#' + $j(grid).attr('id');
		lastsel            = gsr;
		var currentRow     = jQuery('tr#' + gsr, gridId); 
		var rowdata        = grid.jqGrid('getRowData',gsr);
		
		if($j.isEmptyObject(rowdata)){
			if(fwd){
				lastsel = parseInt(lastsel) - 1;
			}else{
				lastsel = parseInt(lastsel) + 1;
			}
			alert('full');
		}else{
		    parm.template_id   = jQuery('#hidden_template_id', currentRow).val() ; 	    
		    parm.page_id       = rowdata.id;  
		    parm.gsr           = gsr;
		    parm.nb            = rms.poison();
			
			jQuery.post(url,parm,function(result, status){ 				
				rms.showLayoutManager(result,rowdata, grid, url);
			}, 'json');	  
		}
	},
	
	buildAccordion : function(mgr, refresh){
		var itemPos   = $j('#layout-items-position', mgr);
		var html      = itemPos.html();
		
		if(html == '' || refresh){ 			
			itemPos.accordion('destroy').html('');
			var newDiv = $j('<div></div>');
			itemPos.before(newDiv).remove();
			newDiv.attr('id', 'layout-items-position');
			var divs = rms.buildAccordionItems(layoutItems.items); 
			//var menu = rms.buildAccordionItems(layoutItems.navs);
			newDiv.append(divs.html()).accordion({
			    	    animated : false,
			    	//   fillSpace : true
			       });
			rms.makeListSortable('div.sort-item ul', mgr); 
			$j('.ui-accordion,.ui-accordion-content, .ui-accordion-content-active')
			.css({
				'overflow' : 'auto',
				'z-index' : 10
			});
		}		
	},
	
	showLayoutManager: function(response, rowdata, grid, url){	
		// layoutItems preloaded as json page and available on cms/design/page;
		var mgrId = $j(grid).attr('id') + '-mgr';
		var mgr   = $j('#'+mgrId);
		
		if(mgr.length == 0){
			var tmp = $j('#layout-shell').html();
			mgr = $j('<div></div');
			mgr.attr('id', mgrId);
			mgr.html(tmp);
			$j('body').prepend(mgr);
		}
		
		rms.buildAccordion(mgr, false);
		var retn = rms.buildLayoutBody(response, rowdata);
		
		$j('#layout-body', mgr).html('');
		$j('#layout-body', mgr).html(retn.html());
		
		rms.makeListSortable('.sortable', mgr);
		rms.makeSectionsSortable('#layout-body', mgr);
		
		var desc    = rms.buildPageDesc(rowdata);  
		
		//$j('#layout-body').html(lay.html());
		
		 
		 mgr.prepend(desc) 
			.dialog({
				width : 850,
				title : rowdata.title,
				position : ['center', 'center'],
				modal : true,
				maxHeight : 550,
				maxWidth : 850,
				resizable : false,
				dialogClass : 'layout-dialog',
				closeOnEscape : false,
				buttons : {
					'close' : function(){
						$j(this).dialog('close');
					},

					'< prev page': function(){;
						var row        = parseInt(lastsel) - 1;
						rms.setPageData(url, row, grid, false);						
					},				
					
					'next page>':	function(){ 
						var row        = parseInt(lastsel) + 1;
						rms.setPageData(url, row, grid, true);
					},
					
					'refresh list': function(){
						rms.buildAccordion(mgr, true);
					},					
					'reset layout' : function(){
						var url = $j('#layout-form').attr('action');
						var parm = {};
						row.task = 'resetlayout';
	
						$j.post(url, row, function(content, stat){
							rms.setupPageLayout(content, row);
						}, 'json');
					},					
					'update' : function(){
						var frm  = $j('#layout-form', mgr);
						var r    = response['params'];
						var purl = '/master/layout-manager/' + r.table;
						var sxnOrder = $j('#layout-body', mgr).sortable('toArray');
						var sxn = $j('ul.sortable', mgr);
						var data = {};
						var cnt = 0;
						sxn.each(function(){
							var ul = $j(this);
							var id = ul.attr('id');
							var p = id.split('-');
							var i = parseInt(p[1]);
							var a = ul.sortable('toArray');
							data[i] = a;
							cnt++;
						});
						var d  = new Date();
						var mt = d.getTime(); 
						purl  += '?' + mt;
						$j.post(purl, {
							'sections[]' : sxnOrder,
							'items' : data, 
							'page_id' : r.page_id,
							'template_id' : r.template_id,
							'task' : 'update', 
							'mt' : mt
						}, function(res, stat){
							//rms.buildLayoutBody(res, rowdata);
							rms.showLayoutManager(res,rowdata, grid, url);
							//rms.setupPageLayout(content, row);
						}, 'json');
					}

				}
			});
		
		//rms.makeSortable();
		rms.setupIns();
		rms.activateTips("a.clue-tips");
	},

	setupPageLayout : function(data, row){
		$j('#page-layout,.temp-div').remove();
		$j('#admin-main-body').append(data.form);
		$j('#page-layout').dialog({
			width : 850,
			position : ['center', 'center'],
			modal : true,
			maxHeight : 800,
			maxWidth : 850,
			resizable : false,
			dialogClass : 'layout-dialog',
			closeOnEscape : false,
			buttons : {
				'Update' : function(){
					var url = $j('#layout-form').attr('action');
					var sxnOrder = $j('#layout-body').sortable('toArray');
					var sxn = $j('ul.sortable');
					var data = [];
					var cnt = 0;
					sxn.each(function(){
						var ul = $j(this);
						var id = ul.attr('id');
						var p = id.split('-');
						var i = parseInt(p[1]);
						var a = ul.sortable('toArray');
						data[i] = a;
						cnt++;
					});
					var d = new Date();
					var mt = d.getTime();

					url += '/task/savelayout';
					$j.post(url, {
						'sections[]' : sxnOrder,
						'items[]' : data,
						'mt' : mt
					}, function(content, stat){
						rms.setupPageLayout(content, row);
					}, 'json');
				},
				'Reset' : function(){
					var url = $j('#layout-form').attr('action');
					var parm = {};
					row.task = 'resetlayout';

					$j.post(url, row, function(content, stat){
						rms.setupPageLayout(content, row);
					}, 'json');
				},
				'Close' : function(){
					$j(this).dialog('close');
				}
			}
		});

		// $j('#page-layout').parent().css('top', -700);

		$j('#lay-accordion').accordion({
			animated : false,
			autoHeight : false 
		});

		$j('ins.fold').addClass('close').live('click', function(){
			var a = $j(this);
			rms.watchFold(a);
		});

		 
		rms.makeSortable();
		//rms.activateTips("a.clue-tips");
	},
	previewPage : function(data){
		$j('#temp-div').remove();
		var div = $j(document.createElement('div'));
		div.attr('id', 'temp-div');
		div.attr('title', data.title);

		var frame = $j(document.createElement('iframe'));
		frame.attr('src', data.url);
		frame.addClass('prev-frame');

		$j('body').append(div);
		div.append(frame).addClass('preview-div').dialog({
			width : 850,
			buttons : {
				'OK' : function(){
					$j(this).dialog('close');
				}
			}
		});
		;

		// div.parent().css('top', -700);
	},

	showSiteLicence : function(data, url, ssid){
		$j('.temp').remove();
		$j('body').append(data);
		$j('#show-licence').addClass('temp').dialog({
			width : 486,
			height : 380,
			buttons : {
				'Update' : function(){
					var lic = jQuery('select[id="licence_id"]').val();
					var parm = {
						'ssid' : ssid,
						'licence_id[]' : lic
					};

					$j(rms.messageDiv).load(url, parm, function(data, success){
						$j(this).show();
					});
				},
				'Close' : function(){
					$j(this).dialog('close');
				}
			}
		});

		$j('.multiselect', '#show-licence').multiselect({
			dividerLocation : 0.5
		});

	},

	showSections : function(data, url){
		$j('.temp').remove();
		$j('body').append(data);
		$j('#show-sections').addClass('temp').dialog({
			width : 473,
			height : 400,
			position : 'center',
			buttons : {
				'Update' : function(){
					var sxns = jQuery('select[id="section_id"]').val();
					var temp = jQuery('input[id="template_id"]').val();
					var parm = {
						'template_id' : temp,
						'section_id[]' : sxns,
						'task' :'save'
					};

					$j(rms.messageDiv).load(url, parm);
					//$j.post(url, parm, function(){
					//}, 'json');
				},
				'Close' : function(){
					$j(this).dialog('close');
				}
			}
		});

	//	$j('.multiselect', '#show-sections').jqGrid('columnChooser');
		
		$j('.multiselect').multiselect({
			'dividerLocation' : 0.5 
		});

	},

	showCategory : function(data, productId, url){
		$j('.temp').remove();
		$j('body').append(data.form);
		$j('#show-category').addClass('temp').dialog({
			width : 486,
			height : 400,
			buttons : {
				'Update' : function(){
					var cats = jQuery('select[id="category_id"]').val();
					var parm = {
						'product_id' : productId,
						'category_id[]' : cats
					};

					$j.post(url, parm, function(){
					}, 'json');
				},
				'Close' : function(){
					$j(this).dialog('close');
				}
			}
		});

		$j('.multiselect', '#show-category').multiselect({
			dividerLocation : 0.5
		});

	},

	prepareViewForm : function(frmId, gridId){
		/*
		 * var spn = $j('span', 'td[id$="image_file"],td[id$="thumb"]');
		 * $j('img.temp').remove(); spn.each(function(i, o) { var e = $j(this);
		 * var s = e.text(); var id = 'spn_' + e.parent().attr('id'); var img =
		 * $j('<img>'); img.attr('src', s).attr('title', s).attr('border',
		 * 0).attr('alt', 'no image'); img.attr('id', 'img_' + id);
		 * e.before(img).val(s).addClass('view_span').attr('id', id).hide(); var
		 * xc = img[0].width; var w = (xc > 256) ? 256 : xc;
		 * img.width(w).addClass('temp'); // e.hide(); });
		 */

		// $j('a','#Act_Buttons').bind('click',rms.prepareViewForm);
	},

	updateAcl : function(url, tableId){
		var ref = document.location.href;
		var v   = {};
		$j('input[name="returnto"]').val(ref);
		var f = $j(tableId).parents('form:first');// .submit(); 
		v['rule']    = $j('input:checked', f).serializeArray();
		var a     = $j('input:checked', f).serializeArray();
		var b     = $j('input[type="checkbox"]', f).serializeArray();
		v['root_id'] = $j('#rootId', f).val(); 
		v['mt']	     = gbl.poison();
		$j.post(url, v, function(data, stat){
			f.remove();
			var cur = $j('#access-tabs');
			var selected = cur.tabs('option', 'selected');
			cur.tabs('load', selected);
			//f.after(data);
			
			//var d = f.parent();
			//d.html(data);
		}, 'html');
		
		return false;
	},

	bindAclBoxes : function(par){
		var bx = $j('input[id^="top_row_"]', par);
		bx.live('click', function(){
			var x = $j(this);
			var prefix = '[' + x.attr('id').replace('top_row_', '') + ']';
			var subs = $j('input[name*="' + prefix + '"]', par);

			subs.attr('checked', x.attr('checked'));
		});

		var yy = $j('div[id^="jqgh"]', par);
		yy.css('height', '35px');

		$j('img.atip, #jqgh_Help', par).parent().css({
			'width' : '25px',
			'text-align' : 'center'
		});
	},

	updateGridStyle : function(id, w){
		var divs = $j('#gview_' + id + ',#pager_' + id + ',#gbox_' + id
				+ ',#rs_m' + id);
		divs.css('position', 'relative');

		var tds = $j('input[name^="rule"]', 'table.acl-table').parent('td');
		tds.css('text-align', 'center');
	},

	initQuickMenus : function(){
		var men = $j('ins', '#quick_menu');
		men.bind('click', function(){
			var i = $j(this);
			var id = i.attr('id');
			var parm = {
				'bypass' : true,
				'todo' : id
			};

			$j.post('/', parm, function(){

			}, 'json');
			return false;
		});
	},

	mapColumnField: function(rowdata, result, showUpdate){
		$j('.mapfield').remove();
		$j(rms.messageDiv).hide();
		
		if(parseInt(result.error) == 1){
			$j(rms.messageDiv).html(result.data).show(); 		 		
		}else{ 
			var div = $j('<div></div>');
			div.addClass('mapfield'); 
			div.html(result.data);
			var btn =  { 
				'Close' : function(){
					$j(this).dialog('destroy');
					$j('.mapfield').remove();
				}
			}
			
			if(showUpdate){
				btn['Update'] = function(){ 
					var frm  = $j('form#feedmap-form');
					var vals = frm.serialize();
					var u    = frm.attr('action');
					var p    = {};
					
					p.str  = vals;
					p.tm   = gbl.poison();
					p.task = 'savemap';
					$.post(u, p, function(d, s){ 
						var msgdiv = $j(rms.messageDiv, '#mapping-area');
						msgdiv.html(d.data).show();
					}, 'json');
				};
			}
			
			div.dialog({
				width : 850, 
				height: 600,
				title : rowdata.title,
				modal : true,
				resizable: false,
				buttons : btn
			});	
			
			tableToGrid('.table-to-grid', { 
				height : 'auto',
				rownumbers : true,
				multiselect : false,  
				caption : 'Column - Data Mapping', 
				toolbar : [true,"bottom"]
			});
			
			$j('td', '.table-to-grid').css('white-space', 'normal');
		}
	},
	
	assignAttributes : function(data, rowdata){
		$j('#edit-attribute,.temp-div').remove();
		$j('.ui-tabs').after(data.form);
		$j('#edit-attribute').dialog(
				{
					width : 780,
					buttons : {
						'Update' : function(){
							var parm = {};
							var frm = $j('#attribute-form');
							var url = frm.attr('action');
							var data = $j('.sortable', '#tosave').sortable(
									'serialize');

							var inps = $j('input', 'ul#saved');
							var lab = {};

							inps.each(function(){
								var i = $j(this);
								var id = i.attr('id').replace('label-', '');
								var v = i.val();
								lab[id] = v;
							});

							parm.str = data;
							parm.tm = gbl.poison();
							parm.labels = $j.param(lab);

							$j.post(url, parm, function(content, stat){

							}, 'json');
						},
						'Close' : function(){
							$j(this).dialog('close');
						}
					}
				});

		$j('.sortable').sortable({
			connectWith : '.sortable',
			cancel : '.fixed',
			cursor : 'move',
			cursorAt : 'right',
			opacity : 0.6,
			// revert: true,
			tolerance : 'pointer',
			update : function(evt, ui){
				$j('ins.remove', '.sortable').show('slow');
			}
		});

		$j('#layout-body').sortable({
			handle : '.div-sort-handle',
			cursor : 'move',
			opacity : 0.5
		});

		rms.setupIns();
	}
};

function SetUrl(file, caller, dlg){
	$j('#' + caller).attr('value', file);
	$j('#img_' + caller).attr('src', file);
	$j('#' + dlg).dialog('close');
}
