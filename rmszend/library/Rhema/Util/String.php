<?php 
class Rhema_Util_String extends Rhema_Util{

	public static function addressArrayToString($addressData){
		$data  = array(   $addressData['line1'] ,
								$addressData['line2'],
								$addressData['line3'],
								$addressData['city'],
								$addressData['state'],
								$addressData['post_code'],
								$addressData['region'],
								$addressData['country'],
							);
		$string = implode(', ', array_filter($data));		
		return $string;
	}
	
	public static function pluralise($word, $count = 1){
		return ($count > 1) ? $word . 's' : $word;
	}
	
	public static function stripWhiteSpaces($data){
		return preg_replace("/(\t|\r|\n)/", '', $data );
	}
}