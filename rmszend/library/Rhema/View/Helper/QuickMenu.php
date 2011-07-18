<?php

class Rhema_View_Helper_QuickMenu extends Zend_View_Helper_Abstract{

	public function QuickMenu(){
		$menus = Rhema_SiteConfig::getConfig('quick_menus');
		$user  = Zend_Auth::getInstance()->getIdentity();
		$menus['current_user']['title'] = $user['firstname'] . ' ' . $user['lastname'];
		$html = '';

		foreach($menus as $id => $item){
			$item  = (object) $item;
			$href  = $item->route ? $this->view->url(array(),$item->route) : '#';
			$html .= "<a href='$href'><ins alt='$item->ajax' title='$item->title' id='$id'
						class='quick_menu_item'></ins></a>";
		}

		return $html;
	}


}