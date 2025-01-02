<?php
class base_datos2{
    private $host;
    private $usua;
    private $pass;
    private $bd;

    private $conexion;
    
    function __construct($host,$usua,$pass,$bd){
        $this->host=$host;
        $this->usua=$usua;
        $this->pass=$pass;
        $this->bd=$bd;

    }
    function conectar(){
        $this->conexion = mysqli_connect($this->host,$this->usua,$this->pass,$this->bd);
        $this->conexion->set_charset("utf8");
        if(mysqli_connect_errno()){
            echo "error al conectarse";

        }

    }
    
    function getUsuarios(){
        $result=mysqli_query($this->conexion,"SELECT * FROM usuario");
        $error=mysqli_error($this->conexion);
        if(empty($error)){
            if(mysqli_num_rows($result)>0){
                return $result;
            }
        }else{
            echo "error al obtener usuarios";
        }
        return null;
    }

    function insUsuario($usua,$clav){
        mysqli_query($this->conexion,"INSERT INTO usuario VALUES('".$usua."','".$clav."')");
        $error=mysqli_error($this->conexion);
        if(empty($error)){
            return true;

        }
        return false;
    }
    function cerrar(){
    mysqli_close($this->conexion);
    } 

}

?>