<?php
    include_once 'validarUsuario.php';
    $senha = $_POST['senha'];
    $login = $_POST['login'];


    if($_SESSION['user'] = efetuarLogin($login, $senha)){
        header("Location: area-restrita.php");
    }
    else{
        $_SESSION['login_error'] = true;
        header("Location: index.php");
    }

?>