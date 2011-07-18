<?php

class Rhema_View_Helper_ReplaceMergeField extends Zend_View_Helper_Abstract {

	public function replaceMergeField($value){

	        $siteConfig    = Rhema_Util::getSessData(Rhema_Constant::SITE_CONFIG_KEY);
			$siteDetails   = $siteConfig['subsite'];
			$featuredThumb = '';
			$filter        = new Zend_Filter_Word_DashToSeparator(' ');
			$request       = Zend_Controller_Front::getInstance()->getRequest();


			if(isset($siteDetails['AddressBook']['id'])){
				$address = Rhema_Util_String::addressArrayToString($siteDetails['AddressBook']);
			}else{
				$address = '';
			}
			
			
			if(Rhema_SiteConfig::getConfig('settings.portfolio.show_featured')){
			    $porfolio      = Rhema_Model_Service::factory('portfolio');
			    $featuredItem  = $porfolio->getRandomFeaturedItem();

			    if($featuredItem){
			        $item = (object) $featuredItem;
			        $href = $this->view->url(array('album'=> $item->slug, 'useThumb' => 0), 'portfolio-album-preview');
			        $featuredThumb = "<a href='{$href}' title='{$item->title} - Featured Photobook Album'><img src='{$item->image_file}'
			        					alt='Featured Photobook' width='124' height='81' border='0' class='feature-thumb' /></a>";
			    }
			}

			$category = $request->getParam('category', '');
			$keyword  = $request->getParam('keyword', '');
			
			$category = preg_replace('/(search|location)/i', '', $category);
			$data     = array(
				'[site-name]'         => $siteDetails['title'],
				'[site-email]'        => $siteDetails['contact_email'],
				'[site-address]'      => $address ,
				'[telephone]'		  => $siteDetails['telephone'],
			    '[featured-thumb]'    => $featuredThumb,
				'[page-name]'		  => $this->view->layout()->pageData['title'],
				'[category]'		  => $category ? $filter->filter($category) : '',
				'[keyword]'		      => $keyword ? $filter->filter($keyword) : ''
			);

			$pattern = array_keys($data);
			$replace = array_values($data);

			return str_replace($pattern, $replace, $value);
	}
}
