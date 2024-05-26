<?php 
require_once 'config/config.php';

class Model {
    
    private $unPDO;
    public function __construct($server, $username, $password, $database) {
        try {
            $this->unPDO = new PDO("mysql:host=$server;dbname=$database", $username, $password);
            $this->unPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Erreur : " . $e->getMessage();
        }
    }

    public function getProjets() {
        $requete = "SELECT * FROM projet";
        $select = $this->unPDO->prepare($requete);
        $select->execute();
        $projets = $select->fetchAll();
        return $projets;
    }

}
