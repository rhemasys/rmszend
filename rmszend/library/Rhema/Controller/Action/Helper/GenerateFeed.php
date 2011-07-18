<?php
class Rhema_Controller_Action_Helper_GenerateFeed extends Rhema_Controller_Action_Helper_Abstract{
	
	protected $_type = 'rss';
	
	public function generateFeed(){
		return $this;
	}
	
	public function rss(Rhema_Dto_FeedDto $dto){		 
		
		$language = Zend_Registry::get('Zend_Locale')->getLanguage();
		$generator = 'RhemaSys - Rhema Webdesign Management System'; 
		 
		$view = Zend_Layout::getMvcInstance()->getView();		
		$feed = new Zend_Feed_Writer_Feed();
		$feedLink = $dto->getLink() . $view->url(array(), 'blog-rss-feed');
		
		$title    = $view->replaceMergeField($dto->getTitle());
		$desc     = $view->replaceMergeField($dto->getDescription());
		
		$feed->setTitle($title);
		$feed->setLink($dto->getLink());
		$feed->setFeedLink($feedLink, $this->getType());
		$feed->setLanguage($language);
		$feed->setDateModified(time());
		$feed->setDescription($desc);
		$feed->setGenerator($generator);
		$feed->setEncoding('UTF-8');
		
		foreach($dto->getItems() as $item){
			$crt   = strtotime($item['created_at']);
			$mod   = strtotime($item['updated_at']);
			$url   = $dto->getLink() .  $view->url(array('slug' => $item['slug']), BLOG_ROUTE);
			$guid  = $url . '/' . $item['id'];			
			$entry = $feed->createEntry();
			$desc  = $item['description'] 
					 ? $item['description'] 
					 : $item['excerpt'] ;
					 
			$content = $item['content'] 
					 ? $item['content'] 
					 : ' ';
					 
			$user  = $item['User'];
			
			$entry->setTitle($item['title']);
			$entry->setLink($url);
			$entry->setId($guid);
			$entry->setDateModified($mod);
			$entry->setDateCreated($crt);
			$entry->setDescription($desc);
			$entry->addAuthor(array(
				'name'  => $user['firstname'] . ' ' . $user['lastname'],
			    'email' => $user['email'],
			    'uri'	=> $user['url']
			));
			$entry->setContent($item['content']);
			$feed->addEntry($entry);
		
		}
		
		$output = $feed->export($this->getType());
		
		return $output;
	}
	/**
	 * @return the $_type
	 */
	public function getType(){
		return $this->_type;
	}
	
	/**
	 * @param field_type $_type
	 */
	public function setType($_type){
		$this->_type = $_type;
		return $this;
	}

}