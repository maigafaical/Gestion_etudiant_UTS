<?php

class etudiant
{
  private $matricule;
  private $id_utilisateur;
  private $nom;
  private $prenom;
  private $date_de_naissance;
  private $nationalite;
  private $filiere_inscrite;
  private $niveau_etude;
  
  
  public function __construct(array $donnee){

    foreach ($donnee as $key => $value) {
        
        if(property_exists($this,$key)){
          $this->$key=$value;
        }
    }
  }

  public function __get($propriete)
  {
       if(property_exists($this,$propriete)){ 
       return $this->$propriete;
    }
  }
        
  public function __set($propriete, $value)
  {
        if(property_exists($this,$propriete)){ 
        $this->$propriete = $value;
     }
  }
}


