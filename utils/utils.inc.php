<?php
    function debugPHP($array){
        echo "<pre>";
        print_r($array);
        echo "</pre><br>";
    }

    function redirect($url){
        die('<script>top.location.href="'.$url.'";</script>');
    }

    function close_session(){
        $_SESSION = array();//Destroy all session variables
        session_destroy();//Destroy the session
    }
