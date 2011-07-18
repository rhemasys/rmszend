<?php

class Rhema_SiteConfig
{
    private static $_config;
    private static $_locale;
    protected static $_tempConfigFilename;
    protected static $_cachedFile ;

    const CACHE_DIR			 = 'cache';
    const CONFIG_DIR		 = 'config';
    const SITE_CONFIG_FILE   = 'site.ini';
    const MERGED_CONFIG_FILE = 'mergedconfig.ini';
    const CACHED_CONFIG      = 'config_array.txt';

    /**
     *
     * Returns site ALL configs, specific subtree of settings or only one setting
     * @param unknown_type $optionDotSeparated e.g. phpSettings.display_startup_errors
     * return array|string|int
     */
	protected static $_instance;

	protected function __construct() {
		$cacheDir = realpath(APPLICATION_PATH . '/../sites/' . SITE_DIR)
							 . DIRECTORY_SEPARATOR .  self::CACHE_DIR
    	   					 . DIRECTORY_SEPARATOR ;
		self::$_tempConfigFilename  = $cacheDir . self::MERGED_CONFIG_FILE ;
		self::$_cachedFile          = $cacheDir . self::CACHED_CONFIG ;
	}

	private function __clone() {
	}

	public static function getInstance() {
		if (null === self::$_instance) {
			self::$_instance            = new self ( );
		}

		return self::$_instance;
	}


	public static function getConfig($optionDotSeparated = null)
    {
    	$optionDotSeparated = trim($optionDotSeparated);
    	
        if (null === self::$_config) {
            self::$_config = Zend_Controller_Front::getInstance()
                            ->getParam('bootstrap')
                            ->getOptions();
        }

        if ($optionDotSeparated !== null) {
            $parts = explode('.', (string)$optionDotSeparated);
            return self::_getOptionFromEntries(self::$_config, $parts);
        }

        return self::$_config;
    }

    private static function _getOptionFromEntries($config, $arrEntries)
    {
        $value = null;
        $hasConfigEntry = isset($arrEntries[0]) && isset($config[$arrEntries[0]]);

        if ($hasConfigEntry) {
            $value = isset($arrEntries[1]) ?
                self::_getOptionFromEntries($config[$arrEntries[0]], array_slice($arrEntries, 1))
                : $config[$arrEntries[0]];
        }
        return $value;
    }

    public static function processConfigFiles($section, $files = array()){

    	 if(!file_exists(self::$_cachedFile) or APPLICATION_ENV == 'development'){
    	 	require_once 'Zend/Config.php';
    		require_once 'Zend/Config/Ini.php';
    		require_once 'Zend/Config/Writer/Ini.php';

    		$configDir =  APPLICATION_PATH . DIRECTORY_SEPARATOR . 'configs' ;
			$recurDir  = new RecursiveDirectoryIterator($configDir);

			foreach(new RecursiveIteratorIterator($recurDir)  as $filename => $cur){
				if(substr($filename,-4) == '.ini' and basename($filename) != 'application.ini'){
					$configPath[] = $filename;
				}
			}

			$siteConfigPath = realpath(APPLICATION_PATH . '/../sites/' . SITE_DIR)
								 . DIRECTORY_SEPARATOR . self::CONFIG_DIR
								 . DIRECTORY_SEPARATOR . self::SITE_CONFIG_FILE;
			$siteConDir     = dirname($siteConfigPath);

			if(!file_exists($siteConDir)){
				mkdir($siteConDir,0755, true);
			}

			if(!file_exists(dirname(self::$_tempConfigFilename))){
				mkdir(dirname(self::$_tempConfigFilename),0755, true);
			}

			if(!file_exists($siteConfigPath)){
			    $defaultSiteConfig = '[production]' . "\r\n\n". '[development : production]';
				file_put_contents($siteConfigPath,  $defaultSiteConfig);
			}

			asort($configPath);

			$configPath[] = $siteConfigPath ;
			$appConfig    = $configDir . DIRECTORY_SEPARATOR . 'application.ini';
			array_unshift($configPath, $appConfig);


    		$config = new Zend_Config(array(), true);

	    	foreach($configPath as $filename){
	    		$dataConfig = new Zend_Config_Ini($filename, APPLICATION_ENV);
	    		$config->merge($dataConfig);
	    	}

	    	$writer    = new Zend_Config_Writer_Ini();
	    	$writer->write(self::$_tempConfigFilename, $config);

	    	$config    = $config->toArray();
	    	$string    = json_encode($config);
	    	$done      = file_put_contents(self::$_cachedFile, $string);

    	}else{
    		$data = file_get_contents(self::$_cachedFile);
    		$config = json_decode($data, true);
    	}

    	if(Rhema_Constant::PRD_ENV != APPLICATION_ENV){
    	    $config['settings']['use_page_cache']  = 0 ;
    	    $config['settings']['use_cache']     = 0;
    	}
    	return $config;
    }
 }