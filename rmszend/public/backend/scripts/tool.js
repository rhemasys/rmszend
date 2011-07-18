// JavaScript Document

$j(function() {
	// =====make the layout flyout in the front end draggble when in admin mode

	var frm    = $j('#form-layout-tool');
	var updUrl = $j('#update_url').val();
	var url    = frm.attr('action');

/*	$j('#layout-tool').dialog( {
		dialogClass : 'adminToolBar',
		resizable : false,
		// position : ['right','center'],
		width : 150
	});*/

	$j('.admin-tab-label').live('click', function() {
		var lab = $j(this);
		var par = lab.parent();
		$j('.admin-tab-desc', par).toggle();
	}) ;

	$j('.elm-tab-label').live('click', function() {
		var lab = $j(this);
		var par = lab.parent();
		$j('.elm-tab-desc', par).toggle();
	});
	// ================= Switch display mode=================================//

	/*
	 * $j('input[id^="editmode"]').live('click',function(){
	 * $j('#form-layout-tool').submit(); });
	 */

	$j('.wrap').each(function(){
		var wp  = $j(this); 
		var cnt = $j('div:first:visible', wp);
		if(cnt.length){
			var tp  = cnt.css('top');
			var ht  = cnt.height(); 
			wp.height(ht);
			if('auto' != tp){
				$j('.editButtons',wp).css('top', tp);
			}
		}
	});
	
	var toolPanel = $j('#layout-tool')
	var panelWrap = toolPanel.parents('div.wrap:first');
	var pH = panelWrap.height() - toolPanel.height();
	panelWrap.height(pH);
	
	$j('input:radio[name="editmode"]').live( 'click', function() {
		var val = $j(this).val();
		val = parseInt(val);

		var pads = $j('div.elmHeader, div.admin-tab');
		var area = $j('div.editable-area');
		if (val) {
			//pads.fadeIn();
			//$j('#toolUpdateButtons').show();
			//$j('div.preview-mode').removeClass('preview-mode').addClass('editable-area');
			//$j('.lay-item').addClass('editmode');
			$j('.editButtons').show();
			$j('.wrap').css('border','solid 1px #ccc');
		} else {
			//pads.fadeOut();
			//$j('#toolUpdateButtons').hide();
			$j('.editButtons').hide();
			$j('.wrap').css('border','1px  transparent');
			
			//$j('div.editable-area').removeClass('editable-area').addClass('preview-mode');
			//$j('.lay-item').removeClass('editmode');
		}
	});
	// ================= make header section sortable =======================//
	var headSections = $j('.sxnHolder', '#divHeader');
	var bodySections = $j('.sxnHolder', '#divContents');
	var footSections = $j('.sxnHolder', '#divBottom');

	var sortParm = {
		containment : 'parent',
		connectWith : '.sxnHolder',
		handle		: '.sort-handle'
	};

	// ================= make layout items sortable
	// ===========================//
	$j('div[id^="sxn-"]').sortable( {
		connectWith : 'div[id^="sxn-"]',
		cancel : '.fixed',
		items : '.lay-item'
	});

	$j('#update-layout').bind('click', function() {
		var parm = {};
		parm['PageHeader'] = headSections.sortable('toArray');
		parm['Page'] = bodySections.sortable('toArray');
		parm['PageFooter'] = footSections.sortable('toArray');

		for ( var tit in parm) {
			for ( var k = 0; k < parm[tit].length; k++) {
				var div = parm[tit][k];
				var list = $j('#' + div).sortable('toArray');
				for ( var j = 0; j < list.length; j++) {
					var name = 'sections[' + tit + '][' + k + ']['
							+ div + '][' + j + ']';
					var inp = $j('<input type="hidden">');
					inp.attr('name', name);
					inp.val(list[j]);
					frm.append(inp);
				}
			}
		}

		var frmUrl = url + '?' + frm.serialize();

		$j.post(frmUrl, {
			'task' : 'updatelayout'
		}, function() {

		}, 'json');

		return false;
	});

	headSections.sortable(sortParm);
	bodySections.sortable(sortParm);
	footSections.sortable(sortParm);

	$j('a[id^="del_"]', '.elmButtons').live('click', function() {
		var parm  = {};
		var o     = $j(this);
		var parts = o.attr('id').split('_');
		var ind   = parts.length - 1;
		parm.id   = parts[ind]; //o.attr('id').replace('del_', '');
		parm.task = 'delete';

		$j.post(updUrl, parm, function(data, status) {
			var pass = parseInt(data.pass);
			o.parents('div.lay-item:first').remove();
		}, 'json');

		return false;
	});

	$j('ins.info', '.editButtons').live('mouseover', function() {
		$j('.info-section', this).slideDown();
	}).live('mouseout', function() { 
		$j('.info-section', this).slideUp(); 
	});

	$j('ins.edit', '.editButtons').live('click', function() {
		$j('.temp-div').remove();
		var parm  = {};
		var btn   = $j(this).parents('span.editButtons:first');
		var part  = btn.attr('id').split('_');
		var ind   = part.length - 1;
		parm.task = 'edit';			
		parm.id   = part[ind];  
		
		$j.post(updUrl,parm, function(data, status) {
				var furl = updUrl + '/task/update';
				var str  = "<div id='comp-editor' title='"
						+ data.title
						+ "' class='temp-div'>";
				str += "<form method='post' action='"
						+ furl
						+ "' id='form-comp-edit'>";
				str += "<input type='hidden' name='id' value='"
						+ data.id + "' />";
				str += "<textarea name='content' id='edit-area'></textarea></form></div>";

				$j('#divSurround').append(str);
				
				var div    = $j('#comp-editor');
				var editor = $j('#edit-area');

				gbl.makeEditor(editor, 500);
				editor.val(data.content);
				/*
				 * editor.ckeditor();
				 */

				div.dialog( {
					width : 950,
					//modal : true,
					position : ['center', 'top'],
					buttons : {
						'update' : function(ui) {
							var parm = {};
							parm.id      = data.id;
							parm.task    = 'update';
							parm.content = editor.val();
							$j.post(furl,parm,function(data,status) {
								var pass = parseInt(data.pass);
								if (pass) {
									var editArea   = $j(btn).siblings('.item-content'); 
									editArea.html(data.content);
								}
							}, 'json');
							return false;
						},
						'close' : function() {
							var ed = $j( '#edit-area').ckeditorGet();
							ed.destroy();
							$j(this).dialog( 'destroy').remove();
						}
					},
					close : function() {
						$j('#edit-area').ckeditorGet() .destroy();
						$j(this).remove();
					}
				});
		}, 'json');

		return false;
	});
	
	
	var i   = $j('a.panel_menu_item'); 
	var url = i.attr('href');
	var div = '#message-div-area';
	 
	i.bind('click', function(){ 
		$j(div).load(url, {}, function(data, status){
			$j(div).show(); 
		});
		return false;
	});
	
	$j('#panel-get-meta').bind('click', function(){
		var a = $j(this);
		var h = a.attr('href');
		
		$j.get(h, {}, function(d, s){
			$j('meta-div').remove();
			var mdiv = $j('<div></div');
			var p    = d.data;
			var title = d.page.id + ' - ' + d.page.title;
			mdiv.attr('title', title);			
			mdiv.html(p).addClass('meta-div');
			mdiv.dialog({
				position : 'center',
				width    : 450,
				modal    : true,
				resizable : false,
				buttons : {
					'update' : function(ui) {
						var parm = {};
						var frm  = $j('form', this);
						var url  = frm.attr('action');
						var dt   = frm.serialize();
						var furl = url + '?' + dt;  
						$j.post(furl,parm,function(data,status) { 
						  $j('form', mdiv).before(data.msg);								 
						}, 'json');
						return false;
					},
					'close' : function() { 
						$j(this).dialog( 'destroy').remove();
					}
				},
				close : function() { 
					$j(this).remove();
				}
			});
		}, 'json');
		
		return false;
	});
	
});