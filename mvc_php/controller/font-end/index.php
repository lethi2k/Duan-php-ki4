<?php session_start(); ?>
<?php 
if (isset($_GET['action'])) {
	$action=$_GET['action'];
}
else{
	$action='';
}
switch ($action) {
case 'index':
	$tbltable="slider";
	$data=$db->getalldata($tbltable);
	$danhmuc="danhmuc";
	$danhmuc=$db->getalldata($danhmuc);
	$monan="monan";
	$monan=$db->getalldata($monan);
	$nhahang="nhahang";
	$nhahang=$db->getdulieu($nhahang);
require_once "view/font-end/freshfood/index.php";
break;
case 'chitietsp':
	$tbltable="slider";
	$data=$db->getalldata($tbltable);
	$danhmuc="danhmuc";
	$danhmuc=$db->getalldata($danhmuc);
	$monan="monan";
	$monan=$db->getalldata($monan);
	$nhahang="nhahang";
	$nhahang=$db->getalldata($nhahang);
	if (isset($_GET['chitiet'])) {
    $chitiet=$_GET['chitiet'];
    $ctnhahang="nhahang";
    $idnh="idnh";
    $ctnhahang=$db->getdataid($ctnhahang,$chitiet,$idnh);
	}
	if (isset($_GET['chitietnh'])) {
    $chitiet=$_GET['chitietnh'];
    $ctnhahang="nhahang";
    $idnh="idnh";
    $ctnhahang=$db->getdataid($ctnhahang,$chitiet,$idnh);
	}
	require_once "view/font-end/freshfood/category.php";
	break;
		case 'xoa-binhluan':
	if (isset($_GET['maxoa'])) {
    $maxoa=$_GET['maxoa'];
    $tbltable="binhluan";
    $thuoctinh="idbl";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=giao-dien&action=index');
    }

}
case 'product':
if ($_GET['chitiet']) {
	$chitiet=$_GET['chitiet'];
	$bl=$db->getalldatabll($chitiet);
	$tbltable="monan";
    $thuoctinh="idsp";
    $idnh=$_GET['idnh'];
    $dataid=$db->getdataid($tbltable,$chitiet,$thuoctinh);
        if (isset($_POST['giohang'])) {
    	$user=$_SESSION['user'];
    	$tb="";
    	$bang="dat_hang";
    	$data=[
		"title"=>"$user",
		"title1"=>"$idnh",
		"title2"=>"	CURRENT_TIMESTAMP()",
		];
		if ($db->insertdata($bang,$data)) {
			$tb="Bạn Đã Đặt Hàng Thành Công";
		}
		else{
			echo "lỗi";
		}

    }
    	if (isset($_POST['btn_luu'])) {
		$name=$_POST['binhluan'];
		$tk=$_SESSION['user'];
		$bang="binhluan";
		$data=[
		"title"=>"$name",
		"title1"=>"$chitiet",
		"title2"=>"$tk",
		"title3"=>"CURRENT_TIMESTAMP()",
		];
		if ($db->insertdata($bang,$data)) {
			header("Refresh:0");
		}
		else{
			echo "lỗi";
		}
		
	}
}
	$monan="monan";
	$monan=$db->getalldata($monan);
	$nhahang="nhahang";
	$nhahang=$db->getalldata($nhahang);
require_once "view/font-end/freshfood/product.php";
break;
case 'dangnhap':
	if (isset($_POST['btl_luu'])) {
		$tk=$_POST['tk'];
		$mk=$_POST['mk'];
		$query=$db->login($tk,$mk);
		if ($query["count(*)"]==1) {
			$check=$db->check($tk,$mk);
			$_SESSION['user']=$check[0];
            $_SESSION['password']=$check[1];
            $_SESSION['anhdd']=$check[2];
            $_SESSION['vaitro']=$check[3];
            header('Location:index.php?controller=giao-dien&action=index');
			// echo "<br>";
			// print_r($check[0]);
			// echo "<br>";
			// print_r($check[1]);
			// echo "<br>";
			// print_r($check[2]);
			// echo "<br>";
			// print_r($check[3]);
			// echo "<br>";
			// echo "thằng thi ngu";
		}
		else{
			echo "Đăng Nhập Sai rồi đăng nhập lại đi";
		
		}

	}
	require_once "view/font-end/freshfood/login.php";
	break;
case 'dangxuat':
		session_start();
		session_destroy();
		header("Location:index.php?controller=giao-dien&action=index");
		break;
//dang kí
		case 'dangki':
	if (isset($_POST['btn_luu'])) {
		$name=$_POST['name'];
		$pass=$_POST['pass'];
		$nameA=$_FILES['anhdd']['name'];
        $tmA=$_FILES['anhdd']['tmp_name'];
        move_uploaded_file($tmA,"images/".$nameA);
        $table="taikhoan";
		if ($db->tk($table,$name,$pass,$nameA)) {
			echo "chúc mừng bạn đăng kí thành công";
		}
		else{
			echo "lỗi";
		}
		
	}
			require_once "view/font-end/freshfood/register.php";
			break;
//tin tức
case 'tintuc':
	$tbltable="tintuc";
	$data=$db->getalldata($tbltable);
	$table="setting";
	$dataid=$db->getdulieu($table);
	require_once "view/font-end/freshfood/singale-blog.php";
	break;
case 'chitiettt':
	$table="setting";
	$setting=$db->getdulieu($table);
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $tbltable="tintuc";
    $thuoctinh="idtt";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);
}
	require_once "view/font-end/freshfood/blog.php";
	break;
	case 'danhmucnh':
	$tbltable="slider";
	$data=$db->getalldata($tbltable);
	$danhmuc="danhmuc";
	$danhmuc=$db->getalldata($danhmuc);
	$nhahang="nhahang";
	$nhahang=$db->getalldata($nhahang);
	require_once "view/font-end/freshfood/dmnh.php";
		break;
	case 'ctdm':
	$tbltable="slider";
	$data=$db->getalldata($tbltable);
	$danhmuc="danhmuc";
	$danhmuc=$db->getalldata($danhmuc);
	$nhahang="nhahang";
	$nhahang=$db->getalldata($nhahang);
	if (isset($_GET['dm'])) {
	$ctdm=$_GET['dm'];
    $ctdm=$db->dmnh($ctdm);
	}
	require_once "view/font-end/freshfood/ctdm.php";
		break;
	//nha hang
	//
	//
	//
	//
	//
	//
case 'xoa-donhang':
	    	if (isset($_GET['maxoa'])) {
		$maxoa=$_GET['maxoa'];
    	$tbltable="chitiet_dathang";
    	$thuoctinh="madat";
    	if ($db->detedm($maxoa,$tbltable,$thuoctinh)) {
    		$a=$_SESSION['user'];
    	header("Location:index.php?controller=giao-dien&action=nhahang&nhahang=$a");
    	}
	}
	break;
	//
	//
	//
	//
	//
	//
	case 'nhahang':
	$table="setting";
	$setting=$db->getdulieu($table);
	$tbltable="slider";
	$data=$db->getalldata($tbltable);
	if (isset($_GET['nhahang'])) {
    $nhahang=$_GET['nhahang'];
    $tbltable="nhahang";
    $thuoctinh="user";
    $dataid=$db->getdataid($tbltable,$nhahang,$thuoctinh);
    $table="monan";
    $monan="idnh";
    $chitiet=$dataid['idnh'];
    $getall=$db->getallid($table,$monan,$chitiet);
    $dathang="chitiet_dathang";
    $dathang=$db->getalldatabllll($dathang);


	}

	require_once "view/font-end/freshfood/nhahang.php";
		break;
	//shipper 
	case 'shipper':
	$tbltable="chitiet_dathang";
	$data=$db->getalldata($tbltable);
		require_once "view/font-end/freshfood/shipper.php";
		break;
	case 'ctdonhang':
	if (isset($_GET['chitiet'])) {
    $chitiet=$_GET['chitiet'];
     $tbltable="chitiet_dathang";
    $thuoctinh="madat";
    $dataid=$db->getdataid($tbltable,$chitiet,$thuoctinh);
}
		require_once "view/font-end/freshfood/hoadon.php";
		break;
//gio hàng
case 'cart':
	$idnh=$_GET['idnh'];
    $thuoctinh="idnh";
    $b="dat_hang";
    $user=$_SESSION['user'];
    $dathang=$db->getdatai($b,$idnh,$thuoctinh,$user);
	$idsp=$_GET['idsp'];
    $bang="monan";
    $thuoctinh="idsp";
    $dataid=$db->getdataid($bang,$idsp,$thuoctinh);

        if(isset($_POST['luu'])){
        $idsp=$_GET['idsp'];
        $madat=$dathang['madat'];
        $tbltable="chitiet_dathang";
        $data=[
		"madat"=>"$madat",
		"idsp"=>"$idsp",
		];
        if ($db->insertdata($tbltable,$data)) {
			
		}
		else{
			echo "lỗi";
		}
}
	require_once "view/font-end/freshfood/cart.php";
	break;
	//dat hàng chi tiết
	//
	case 'thongtin':
	$tbltable="chitiet_dathang";
	$idsp=$_GET['idsp'];
	$data=$db->donhang($tbltable,$idsp);
		require_once "view/font-end/freshfood/thongtin.php";
		break;

	case 'timkiem':
	$tbltable="slider";
	$data=$db->getalldata($tbltable);
	$danhmuc="danhmuc";
	$danhmuc=$db->getalldata($danhmuc);
	if (isset($_GET['tukhoa'])) {
		$nhap=$_GET['tukhoa'];
		$ten="tennh";
		$table="nhahang";
		if ($nhahang=$db->search($table,$ten,$nhap)) {
			echo ".";
		}
    else{
		echo "Không có tên nhà hàng như bạn yêu cầu";
	}
	}
	
	require_once "view/font-end/freshfood/timkiem.php";
		break;
//
//
	case 'lichsu':
	$table="dat_hang";
	$idsp=$_GET['tk'];
	$data=$db->ls($table,$idsp);
	require_once "view/font-end/freshfood/checkout.php";
	break;
case 'donhangct':
	$bb="setting";
	$setting=$db->getdulieu($bb);
	$bang="slider";
	$slider=$db->getalldata($bang);
	$tbltable="chitiet_dathang";
	$madat=$_GET['madat'];
	$thuoctinh="madat";
	$data=$db->getallid($tbltable,$thuoctinh,$madat);
	require_once "view/font-end/freshfood/ctdonhang.php";
	break;
//ket thuc
	default:
		
		break;
}
 ?>