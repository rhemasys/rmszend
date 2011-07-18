<?php
class Rhema_Adapter_Paginator implements Zend_Paginator_Adapter_Interface{
	 
	private $_daoFilter; 
	private $_query = null;
	private $_model = null;
	
	public function __construct(Rhema_Dao_Filter $filter){ 
		$this->_daoFilter   = $filter ; 
	}
	
	public function count(){ 	
		if(null === $this->_model){
			$this->_model   = Rhema_Model_Service::factory($this->_daoFilter->getModel());
		}
			 
		$filter = clone($this->_daoFilter);   
		$count =   $this->_model->countAll($this->_daoFilter); 
		return $count ;
	}
	
	public function getItems($offset, $itemCountPerPage){
		if(null === $this->_model){
			$this->_model   = Rhema_Model_Service::factory($this->_daoFilter->getModel());
		}
		$this->_daoFilter->setLimit($itemCountPerPage)
					     ->setOffset($offset);
					     
		return  $this->_model->findAll($this->_daoFilter) ;       
	}
 
}