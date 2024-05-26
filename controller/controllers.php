<?php 
require_once 'models/models.php';
class Controller {
    private $unModel;
    
    public function __construct($server, $username, $password, $database) {
        $this->unModel = new Model($server, $username, $password, $database);
    }

    public function getProjets() {
        return $this->unModel->getProjets();
    }

}
