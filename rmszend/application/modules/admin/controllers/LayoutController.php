<?php
	class Admin_LayoutController extends Rhema_Controller_Abstract {

	    public function init(){
	    	/* Initialize action controller here */
			parent::init();

	    }

		public function indexAction(){

		}


		public function updateAction(){
			$request = $this->getRequest();
			$task    = $request->getParam('task', null);
			$itemId  = $request->getParam('itemId', null);
			$output  = array();

			if($task){
				switch($task){
					case 'delete':{
						$layoutId       = $request->get('id');
						$output['pass'] = Admin_Model_PageLayout::deleteItem($layoutId);
						break;
					}

					case 'edit':{
						$comId             = $request->get('id');
						$output            = Admin_Model_Component::getItem($comId);
						break;
	 				}

					case 'update':{
						$comId             = $request->get('id');
						$content           = $request->getParam('content');
						$done			   = Admin_Model_Component::updateContent($comId, $content);
						$output['pass']    = $done;
						if($done){
							$output['content'] = $content;
						}
						break;
					}

				}
			}


			$this->_utility->setAjaxData(Zend_Json::encode($output));
		}

	}
