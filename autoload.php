<?php
  /*** nullify any existing autoloads ***/
  spl_autoload_register(null, false);
  
  spl_autoload_extensions('.php,.inc.php,.class.php,.class.singleton.php');

  spl_autoload_register('loadClasses');

  function loadClasses($className){

		if( file_exists('modules/users/model/BLL/'.$className.'.class.singleton.php' ) ){
			set_include_path('modules/users/model/BLL/');
			spl_autoload($className);
		}elseif( file_exists('modules/users/model/DAO/'.$className.'.class.singleton.php' ) ){
			set_include_path('modules/users/model/DAO/');
			spl_autoload($className);
		}elseif( file_exists('model/'.$className.'.class.singleton.php' ) ){
			set_include_path('model/');
			spl_autoload($className);
		}
	}
