<?php
  
  $usuario = "root";
  $senha = "";

  try {
    $conn = new PDO('mysql:host=localhost;port=3308;dbname=curriculo_2', $usuario, $senha);
    //print "Conectado";
  }catch (PDOException $ex){
    print "Erro ao conectar ao banco de dados";
  }  
?>