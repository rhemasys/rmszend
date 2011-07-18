<?php
	class Rhema_Form_Search_Simple extends Rhema_Form_Abstract {

		public function init(){
			$this->_addFormDecorator = false;
			parent::init();
			$this->addElement('text','keyword', array( 
			    'label'		    => 'Keyword Search',
				'value'			=> '',
			    'title'			=> 'Seperate keywords with spaces',
	            'filters'    	=> array('StringTrim', 'StripTags'), 
	            'decorators' 	=> $this->getElemDecor('keyword'),
			    'onclick'		=> 'this.value=""; this.style.color="#fff";',
				'style'			=> 'color:#ccc'	,
			    'required'	    => true			
			));
 
			$button  = $this->getSubmitButton('Search');
			$this->addElement($button);
			$this->removeElement('csrf');
 
		}
	}