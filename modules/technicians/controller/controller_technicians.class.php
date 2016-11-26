<?php
class controller_technicians {
    function __construct() {}

    function begin() {
        loadView('modules/technicians/view/', 'main.php');
    }

    function maploader() {

        set_error_handler('ErrorHandler');
        try {
            $arrValue = loadModel(MODEL_TECHNICIANS, "technicians_model", "select", array('column' => array('false'), 'field' => array('*')));
        } catch (Exception $e) {
            $arrValue = false;
        }
        restore_error_handler();

        if ($arrValue) {
            $arrArguments['technicians'] = $arrValue;
            $arrArguments['success'] = true;
            echo json_encode($arrArguments);
        } else {
            $arrArguments['success'] = false;
            $arrArguments['error'] = 503;
            echo json_encode($arrArguments);
        }
    }
}
