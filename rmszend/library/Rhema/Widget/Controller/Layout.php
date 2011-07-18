<?php
	class Rhema_Widget_Controller_Layout extends Rhema_Widget_Abstract{


		public function indexMethod(){

		}

		public function toolMethod(){
			$return   = array();
			$scope	  = 'admin';
			$resource = 'mvc:admin.layout';
			$userRole = Zend_Registry::get(Rhema_Constant::USER_ROLE_KEY);
			$priv	  = 'tool';

			$acl      = $this->_utility->getAcl($scope);
			$auth     = Zend_Auth::getInstance();
			$editMode = 0 ; //$this->_utility->getSessData('editmode', 0);
			$isAdmin  = 0;

			if($auth->hasIdentity() and $acl->has($resource) and $acl->isAllowed($userRole, $resource, $priv) ){
				$isAdmin 			= 1;
				$uniqueCss[]     	= SCRIPT_PATH . '/jquery/css/redmond/jquery-ui-1.8.9.custom.css';
				//$js[]				= '/jquery/js/jquery-ui-1.7.2.custom.min.js';


	 		 		$js[] 				= '/../editors/ckeditor/ckeditor.js';
	 		 		$js[] 				= '/../editors/ckeditor/adapters/jquery.js';
	 		 		//$uniqueCss[]		= '/backend/css/global.css';
	 		 		$uniqueCss[]		= '/backend/css/tool.css';

	 		 	$js[] 				= '/tool.js';

				$this->_utility->setHeaderFiles($js);
				$this->_utility->setHeaderFiles($uniqueCss, 'uniqueCss');

			    $url['module']			= 'cms';
			    $url['controller']		= 'design';
			    $url['action']			= 'updatelayout';

			    $updUrl['module']		= 'admin';
			    $updUrl['controller']	= 'layout';
			    $updUrl['action']		= 'update' ;


				$return['editMode']   = $editMode;
				$return['formAction'] = $this->_view->url($url, ADMIN_ROUTE);; //$this->getRequest()->getRequestUri();
				$return['updateUrl']  = $this->_view->url($updUrl, ADMIN_ROUTE);
				$return['allow']      = true;

			}else{
				$isAdmin 			= 0;
				$return['allow']  = false;
				//$this->_utility->setSessData('editmode', 0);
			}

			$this->_utility->setSessData('editmode', $editMode);
			$this->_utility->setSessData('admin', $isAdmin);

			return $return ;
		}

	}
