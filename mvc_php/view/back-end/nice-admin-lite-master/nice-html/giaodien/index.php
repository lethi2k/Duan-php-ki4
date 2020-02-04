<?php 
if (isset($_SESSION["user"]) && $_SESSION["vaitro"]==3) {
    echo "Xin Chào";
}else{
    header("Location:index.php?controller=giao-dien&action=index");
}
 ?>
<?php require "header.php" ?>
