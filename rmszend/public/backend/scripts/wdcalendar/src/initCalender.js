/**
 * 
 */
       jQuery(document).ready(function() {     
           var view        = "week";          
           var pathPrefix  = '/backend/scripts/wdcalendar';
           
            var DATA_FEED_URL = eventObject.url; // + "/php/datafeed.php";
           //var DATA_FEED_URL = pathPrefix + "/php/datafeed.php";
            var op = {
                view: view,
                theme:2,
                showday: new Date(),
                EditCmdhandler:Edit,
                DeleteCmdhandler:Delete,
                ViewCmdhandler:View,    
                onWeekOrMonthToDay:wtd,
                onBeforeRequestData: cal_beforerequest,
                onAfterRequestData: cal_afterrequest,
                onRequestDataError: cal_onerror, 
                autoload:true,
                url: DATA_FEED_URL + "?method=list",  
                quickAddUrl: DATA_FEED_URL + "?method=add", 
                quickUpdateUrl: DATA_FEED_URL + "?method=update",
                quickDeleteUrl: DATA_FEED_URL + "?method=remove"        
            };
            var $dv = jQuery("#calhead");
            var _MH = document.documentElement.clientHeight;
            var dvH = $dv.height() + 2;
            op.height = _MH - dvH;
            op.eventItems =[];

            var p = jQuery("#gridcontainer").bcalendar(op).BcalGetOp();
            if (p && p.datestrshow) {
                jQuery("#txtdatetimeshow").text(p.datestrshow);
            }
            jQuery("#caltoolbar").noSelect();
            
            jQuery("#hdtxtshow").datepicker({ 
            	picker: "#txtdatetimeshow", 
            	showtarget: jQuery("#txtdatetimeshow"),
            	onReturn:function(r){                          
                            var p = jQuery("#gridcontainer").gotoDate(r).BcalGetOp();
                            if (p && p.datestrshow) {
                                jQuery("#txtdatetimeshow").text(p.datestrshow);
                            }
                     } 
            });
            function cal_beforerequest(type)
            {
                var t="Loading data...";
                switch(type)
                {
                    case 1:
                        t="Loading data...";
                        break;
                    case 2:                      
                    case 3:  
                    case 4:    
                        t="The request is being processed ...";                                   
                        break;
                }
                jQuery("#errorpannel").hide();
                jQuery("#loadingpannel").html(t).show();    
            }
            function cal_afterrequest(type)
            {
                switch(type)
                {
                    case 1:
                        jQuery("#loadingpannel").hide();
                        break;
                    case 2:
                    case 3:
                    case 4:
                        jQuery("#loadingpannel").html("Success!");
                        window.setTimeout(function(){ jQuery("#loadingpannel").hide();},2000);
                    break;
                }              
               
            }
            function cal_onerror(type,data)
            {
                jQuery("#errorpannel").show();
            }
            function Edit(data)
            {
               var eurl= pathPrefix + "/edit.php?id={0}&start={2}&end={3}&isallday={4}&title={1}";   
                if(data)
                {
                    var url = StrFormat(eurl,data);
                    OpenModelWindow(url,{ width: 600, height: 400, caption:"Manage  The Calendar",onclose:function(){
                       jQuery("#gridcontainer").reload();
                    }});
                }
            }    
            function View(data)
            {
                var str = "";
                jQuery.each(data, function(i, item){
                    str += "[" + i + "]: " + item + "\n";
                });
                alert(str);               
            }    
            function Delete(data,callback)
            {           
                
                jQuery.alerts.okButton="Ok";  
                jQuery.alerts.cancelButton="Cancel";  
                hiConfirm("Are You Sure to Delete this Event", 'Confirm',function(r){ r && callback(0);});           
            }
            function wtd(p)
            {
               if (p && p.datestrshow) {
                    jQuery("#txtdatetimeshow").text(p.datestrshow);
                }
                jQuery("#caltoolbar div.fcurrent").each(function() {
                    jQuery(this).removeClass("fcurrent");
                })
                jQuery("#showdaybtn").addClass("fcurrent");
            }
            //to show day view
            jQuery("#showdaybtn").click(function(e) {
                //document.location.href="#day";
                jQuery("#caltoolbar div.fcurrent").each(function() {
                    jQuery(this).removeClass("fcurrent");
                })
                jQuery(this).addClass("fcurrent");
                var p = jQuery("#gridcontainer").swtichView("day").BcalGetOp();
                if (p && p.datestrshow) {
                    jQuery("#txtdatetimeshow").text(p.datestrshow);
                }
            });
            //to show week view
            jQuery("#showweekbtn").click(function(e) {
                //document.location.href="#week";
                jQuery("#caltoolbar div.fcurrent").each(function() {
                    jQuery(this).removeClass("fcurrent");
                })
                jQuery(this).addClass("fcurrent");
                var p = jQuery("#gridcontainer").swtichView("week").BcalGetOp();
                if (p && p.datestrshow) {
                    jQuery("#txtdatetimeshow").text(p.datestrshow);
                }

            });
            //to show month view
            jQuery("#showmonthbtn").click(function(e) {
                //document.location.href="#month";
                jQuery("#caltoolbar div.fcurrent").each(function() {
                    jQuery(this).removeClass("fcurrent");
                })
                jQuery(this).addClass("fcurrent");
                var p = jQuery("#gridcontainer").swtichView("month").BcalGetOp();
                if (p && p.datestrshow) {
                    jQuery("#txtdatetimeshow").text(p.datestrshow);
                }
            });
            
            jQuery("#showreflashbtn").click(function(e){
                jQuery("#gridcontainer").reload();
            });
            
            //Add a new event
            jQuery("#faddbtn").click(function(e) {
                var url = pathPrefix + "/edit.php";
                OpenModelWindow(url,{ width: 500, height: 400, caption: "Create New Calendar"});
            });
            //go to today
            jQuery("#showtodaybtn").click(function(e) {
                var p = jQuery("#gridcontainer").gotoDate().BcalGetOp();
                if (p && p.datestrshow) {
                    jQuery("#txtdatetimeshow").text(p.datestrshow);
                }


            });
            //previous date range
            jQuery("#sfprevbtn").click(function(e) {
                var p = jQuery("#gridcontainer").previousRange().BcalGetOp();
                if (p && p.datestrshow) {
                    jQuery("#txtdatetimeshow").text(p.datestrshow);
                }

            });
            //next date range
            jQuery("#sfnextbtn").click(function(e) {
                var p = jQuery("#gridcontainer").nextRange().BcalGetOp();
                if (p && p.datestrshow) {
                    jQuery("#txtdatetimeshow").text(p.datestrshow);
                }
            });
            
        });
 