<?php session_start(); ?>
<?php 
if (isset($_GET['action'])) {
	$action=$_GET['action'];
}
else{
	$action='';
}
switch ($action) {
	//trang chu
	case 'index':
		include "./view/back-end/nice-admin-lite-master/nice-html/giaodien/index.php";
		break;
	//show danh muc
	case 'danh-muc':
	$tbltable="danhmuc";
	$data=$db->getalldata($tbltable);
	include "./view/back-end/nice-admin-lite-master/nice-html/danhmuc/danhmuc.php";
		break;
	//thêm đanh mục
	case 'add-danhmuc':
	if (isset($_POST['btn_luu'])) {
		$tencty=$_POST['tencty'];
		$nameA=$_FILES['logo']['name'];
        $tmA=$_FILES['logo']['tmp_name'];
        $tbltable="danhmuc";
        move_uploaded_file($tmA,"images/".$nameA);
		$data=[
		"title"=>"$tencty",
		"title1"=>"$nameA",
		];
		if ($db->insertdata($tbltable,$data)) {
			header('Location:index.php?controller=thanh-vien&action=danh-muc');
		}
		else{
			echo "lỗi";
		}
		
	}

	require "view/back-end/nice-admin-lite-master/nice-html/danhmuc/them.php";
		break;
	//sửa danh mục
	
		
		// $data=$db->insertdata($tbltable,$data,"1","madm");
		// echo $data;

	case 'sua-danhmuc':
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $tbltable="danhmuc";
    $thuoctinh="iddm";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);
    if (isset($_POST['update_danhmuc'])) {
    $tencty=$_POST['tencty'];
    $nameA=$_FILES['logo']['name'];
    $tmA=$_FILES['logo']['tmp_name'];
    move_uploaded_file($tmA,"images/".$nameA);
    if(empty($_FILES['logo']['name'])){
    $nameA=$dataid['logo'];
    }
    $data=[
		"tencty"=>"$tencty",
		",logo"=>"$nameA",
		];
    if ($db-> updatedata("danhmuc",$data,$masua,"iddm")) {
    	header('Location:index.php?controller=thanh-vien&action=danh-muc');
    }
    }

   }
	require "view/back-end/nice-admin-lite-master/nice-html/danhmuc/sua.php";
		break;
	//xóa danh mục
	case 'xoa-danhmuc':
	if (isset($_GET['maxoa'])) {
    $maxoa=$_GET['maxoa'];
    $tbltable="danhmuc";
    $thuoctinh="iddm";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=danh-muc');
    }

  }
	// require "view/back-end/nice-admin-lite-master/nice-html/danhmuc/xoa.php";
		break;
	//món ăn
	case 'show-monan':
	$tbltable="monan";
	$data=$db->getalldata($tbltable);
	require "view/back-end/nice-admin-lite-master/nice-html/monan/monan.php";
		break;
	//thêm món ăn
	case 'add-monan':
	$tbltable="nhahang";
	$data=$db->getalldata($tbltable);
    if(isset($_POST['btn_luu'])){
    	$nameA=$_FILES['anhdd']['name'];
        $tmA=$_FILES['anhdd']['tmp_name'];
    	move_uploaded_file($tmA,"images/".$nameA);
    	if(empty($_FILES['anhdd']['name'])){
    	$nameA=$dataid['anhdd'];
    	}
        $tensp=$_POST['tensp'];
        $chitietsp=$_POST['area1'];
        $soluong=$_POST['soluong'];
        $gia=$_POST['gia'];
        $giamgia=$_POST['giamgia'];
        $idnh=$_POST['idnh'];
        $tbltable="monan";
        $data=[
		"tensp"=>"$tensp",
		"anhdd"=>"$nameA",
		"gia"=>"$gia",
		"giamgia"=>"$giamgia",
		"view"=>"$soluong",
		"phiship"=>"$soluong",
		"chitietsp"=>"$chitietsp",
		"ngaydang"=>"CURRENT_TIMESTAMP()",
		"idnh"=>"$idnh",
		];
        if ($db->insertdata($tbltable,$data)) {
			header('Location:index.php?controller=thanh-vien&action=show-monan');
		}
		else{
			echo "lỗi";
		}
}
	require "view/back-end/nice-admin-lite-master/nice-html/monan/them.php";
		break;
	case 'sua-monan':
	$tbltable="nhahang";
	$data=$db->getalldata($tbltable);
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $tbltable="monan";
    $thuoctinh="idsp";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);
    if (isset($_POST['btn_luu'])) {
    	$nameA=$_FILES['anhdd']['name'];
        $tmA=$_FILES['anhdd']['tmp_name'];
    	move_uploaded_file($tmA,"images/".$nameA);
    	if(empty($_FILES['anhdd']['name'])){
    	$nameA=$dataid['anhdd'];
    	}
        $tensp=$_POST['tensp'];
        $chitietsp=$_POST['area1'];
        $soluong=$_POST['soluong'];
        $gia=$_POST['gia'];
        $giamgia=$_POST['giamgia'];
        $idnh=$_POST['idnh'];
        $tbltable="monan";
        $data=[
		"tensp"=>"$tensp",
		",anhdd"=>"$nameA",
		",gia"=>"$gia",
		",giamgia"=>"$giamgia",
		",view"=>"$soluong",
		",phiship"=>"$soluong",
		",chitietsanpham"=>"$chitietsp",
		",idnh"=>"$idnh",
		];
    if ($db->updatedata("monan",$data,$masua,"idsp")) {
    	header('Location:index.php?controller=thanh-vien&action=show-monan');
    }
    else{
    	echo "lỗi";
    }

    	}
			}
	require "view/back-end/nice-admin-lite-master/nice-html/monan/sua.php";
		break;
case 'chitietsp':
	if (isset($_GET['chitiet'])) {
		$chitiet=$_GET['chitiet'];
		$tbltable="monan";
    	$thuoctinh="idsp";
    	$dataid=$db->getdataid($tbltable,$chitiet,$thuoctinh);
	}
	require "view/back-end/nice-admin-lite-master/nice-html/monan/chitietsp.php";
	break;
	case 'xoa-monan':
		if (isset($_GET['maxoa'])) {
    	$maxoa=$_GET['maxoa'];
    	$tbltable="monan";
    	$thuoctinh="idsp";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-monan');
    }
  }
		break;
	// nhà hàng
	case 'show-nhahang':
	$tbltable="nhahang";
	$data=$db->getalldata($tbltable);
	require "view/back-end/nice-admin-lite-master/nice-html/nhahang/nhahang.php";
		break;
		//thêm nhà hàng
	case 'add-nhahang':
	$tbltable="danhmuc";
	$data=$db->getalldata($tbltable);
	$tbluser="taikhoan";
	$user=$db->getalldata($tbluser);
	if(isset($_POST['btn_luu'])){
    	$nameA=$_FILES['anhdd']['name'];
        $tmA=$_FILES['anhdd']['tmp_name'];
    	move_uploaded_file($tmA,"images/".$nameA);
    	$nameB=$_FILES['logo']['name'];
        $tmB=$_FILES['logo']['tmp_name'];
    	move_uploaded_file($tmA,"images/".$nameB);
        $tennh=$_POST['tennh'];
        $diachi=$_POST['diachi'];
        $giathapnhat=$_POST['giathapnhat'];
        $giacaonhat=$_POST['giacaonhat'];
        $mota=$_POST['mota'];
        $view=$_POST['view'];
        $user=$_POST['user'];
        $iddm=$_POST['iddm'];
        $tbltable="nhahang";
        $data=[
		"tennh"=>"$tennh",
		"logo"=>"$nameB",
		"anhdd"=>"$nameA",
		"diachi"=>"$diachi",
		"giathapnhat"=>"$giathapnhat",
		"giacaonhat"=>"$giacaonhat",
		"mota"=>"$mota",
		"view"=>"$view",
		"mocua"=>"CURRENT_TIMESTAMP",
		"dongcua"=>"CURRENT_TIMESTAMP",
		"user"=>"$user",
		"iddm"=>"$iddm",
		];
        if ($db->insertdata($tbltable,$data)) {
			header('Location:index.php?controller=thanh-vien&action=show-nhahang');
		}
		else{
			echo "lỗi";
		}
}
	require "view/back-end/nice-admin-lite-master/nice-html/nhahang/them.php";
		break;
	case 'sua-nhahang':
	$tbltable="danhmuc";
	$data=$db->getalldata($tbltable);
	$tbluser="taikhoan";
	$user=$db->getalldata($tbluser);
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $tbltable="nhahang";
    $thuoctinh="idnh";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);

    if(isset($_POST['btn_luu'])){
    	$nameA=$_FILES['anhdd']['name'];
        $tmA=$_FILES['anhdd']['tmp_name'];
    	move_uploaded_file($tmA,"images/".$nameA);
    	$nameB=$_FILES['logo']['name'];
        $tmB=$_FILES['logo']['tmp_name'];
    	move_uploaded_file($tmA,"images/".$nameB);
    	if(empty($_FILES['logo']['name'])){
    	$nameB=$dataid['logo'];
    	}
    	if(empty($_FILES['anhdd']['name'])){
    	$nameA=$dataid['anhdd'];
    	}
        $tennh=$_POST['tennh'];
        $diachi=$_POST['diachi'];
        $giathapnhat=$_POST['giathapnhat'];
        $giacaonhat=$_POST['giacaonhat'];
        $mota=$_POST['mota'];
        $view=$_POST['view'];
        $user=$_POST['user'];
        $table="nhahang";
        $iddm=$_POST['iddm'];
        $thuoctinh="idnh";
        $data=[
		"tennh"=>"$tennh",
		",logo"=>"$nameB",
		",anhdd"=>"$nameA",
		",diachi"=>"$diachi",
		",giathapnhat"=>"$giathapnhat",
		",giacaonhat"=>"$giacaonhat",
		",mota"=>"$mota",
		",view"=>"$view",
		",mocua"=>"CURRENT_TIMESTAMP",
		",dongcua"=>"CURRENT_TIMESTAMP",
		",user"=>"$user",
		",iddm"=>"$iddm",
		];
        if ($db->updatedata($table,$data,$masua,$thuoctinh)) {
			header('Location:index.php?controller=thanh-vien&action=show-nhahang');
		}
		else{
			echo "lỗi";
		}
}
	}
	require "view/back-end/nice-admin-lite-master/nice-html/nhahang/sua.php";
		break;
	case 'xoa-nhahang':
	if (isset($_GET['maxoa'])) {
    	$maxoa=$_GET['maxoa'];
    	$tbltable="nhahang";
    	$thuoctinh="idnh";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-nhahang');
    }
  }
		break;
	// shipper
	case 'show-shipper':
	$tbltable="shipper";
	$data=$db->getalldata($tbltable);
	require "view/back-end/nice-admin-lite-master/nice-html/shipper/shipper.php";
		break;
	// tin tức
	case 'show-tintuc':
	$tbltable="tintuc";
	$data=$db->getalldata($tbltable);
	require "view/back-end/nice-admin-lite-master/nice-html/tintuc/tintuc.php";
		break;
	case 'add-tintuc':
	$tbltable="taikhoan";
	$user=$db->getalldata($tbltable);
	if (isset($_POST['btn_luu'])) {
		$tieude=$_POST['tieude'];
		 $nameA=$_FILES['anhdd']['name'];
        $tmA=$_FILES['anhdd']['tmp_name'];
        move_uploaded_file($tmA,"images/".$nameA);
		$mota=$_POST['mota'];
		$diachi=$_POST['diachi'];
		$user=$_POST['user'];
		$chitiet=$_POST['chitiet'];
		$tbltable="tintuc";
		$data=[
		"tieude"=>"$tieude",
		",logo"=>"$nameA",
		",monta"=>"$mota",
		",diachi"=>"$diachi",
		",chitiet"=>"$chitiet",
		",ngaydang"=>"CURRENT_TIMESTAMP",
		",user"=>"$user",
		];
		if ($db->insertdata($tbltable,$data)) {
			header('Location:index.php?controller=thanh-vien&action=show-tintuc');
		}
		else{
			echo "lỗi";
		}
	}
	require "view/back-end/nice-admin-lite-master/nice-html/tintuc/them.php";
		break;
	case 'sua-tintuc':
	$tbltable="taikhoan";
	$user=$db->getalldata($tbltable);
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $tbltable="tintuc";
    $thuoctinh="idtt";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);

    if (isset($_POST['btn_luu'])) {
		$tieude=$_POST['tieude'];
		$nameA=$_FILES['anhdd']['name'];
        $tmA=$_FILES['anhdd']['tmp_name'];
        move_uploaded_file($tmA,"images/".$nameA);
        if(empty($_FILES['anhdd']['name'])){
    	$nameA=$dataid['logo'];
    	}
		$mota=$_POST['mota'];
		$diachi=$_POST['diachi'];
		$user=$_POST['user'];
		$chitiet=$_POST['chitiet'];
		$tbltable="tintuc";
		$thuoctinh="idtt";
		$data=[
		"tieude"=>"$tieude",
		",logo"=>"$nameA",
		",mota"=>"$mota",
		",diachi"=>"$diachi",
		",chitiet"=>"$chitiet",
		",user"=>"$user",
		
		];
		if ($db->updatedata($tbltable,$data,$masua,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-tintuc');
    }
	}
		}
	require "view/back-end/nice-admin-lite-master/nice-html/tintuc/sua.php";
		break;
	case 'chitiettt':
	if (isset($_GET['chitiet'])) {
		$chitiet=$_GET['chitiet'];
		$tbltable="tintuc";
    	$thuoctinh="idtt";
    	$dataid=$db->getdataid($tbltable,$chitiet,$thuoctinh);
	}
	require "view/back-end/nice-admin-lite-master/nice-html/tintuc/chitiet.php";
	break;
	case 'xoa-tintuc':
	if (isset($_GET['maxoa'])) {
    $maxoa=$_GET['maxoa'];
    $tbltable="tintuc";
    $thuoctinh="idtt";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-tintuc');
    }

}
		break;
	// slider
	case 'show-slider':
	$tbltable="slider";
	$data=$db->getalldata($tbltable);
	if (isset($_GET['anhien'])) {
    $anhien=$_GET['anhien'];
    if ($db->anhien($anhien)) {
    	header('Location:index.php?controller=thanh-vien&action=show-slider');
    }
}
	require "view/back-end/nice-admin-lite-master/nice-html/slider/slider.php";
		break;
	case 'add-slider':
		if(isset($_POST['btn_luu'])){
        $nameA=$_FILES['logo']['name'];
        $tmA=$_FILES['logo']['tmp_name'];
        move_uploaded_file($tmA,"images/".$nameA);
        $tieude=$_POST['tieude'];
        $link=$_POST['link'];
        $tbltable="slider";
		$data=[
		"anhdd"=>"$nameA",
		"tieude"=>"$tieude",
		"trangthai"=>"1",
		"link"=>"$link",
		];
		if ($db->insertdata($tbltable,$data)) {
			header('Location:index.php?controller=thanh-vien&action=show-slider');
		}
		else{
			echo "lỗi";
		}
		
	}
	require "view/back-end/nice-admin-lite-master/nice-html/slider/them.php";
		break;
	case 'sua-slider':
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $tbltable="slider";
    $thuoctinh="id";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);
    if(isset($_POST['btn_luu'])){
        $nameA=$_FILES['logo']['name'];
        $tmA=$_FILES['logo']['tmp_name'];
        move_uploaded_file($tmA,"images/".$nameA);
            if(empty($_FILES['logo']['name'])){
   			 $nameA=$dataid['anhdd'];
    		}
    		$vaitro=$_POST['trangthai'];
        $tieude=$_POST['tieude'];
        $link=$_POST['link'];
        $tbltable="slider";
		$data=[
		"anhdd"=>"$nameA",
		",tieude"=>"$tieude",
		",trangthai"=>"$vaitro",
		",link"=>"$link",
		];
    if ($db-> updatedata("slider",$data,$masua,"id")) {
    	header('Location:index.php?controller=thanh-vien&action=show-slider');
    }
    }

   }
	require "view/back-end/nice-admin-lite-master/nice-html/slider/sua.php";
		break;
	case 'xoa-slider':
	if (isset($_GET['maxoa'])) {
    $maxoa=$_GET['maxoa'];
    $tbltable="slider";
    $thuoctinh="id";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-slider');
    }

}
		break;
		// don hàng
	case 'show-donhang':
	$tbltable="dat_hang";
	$data=$db->getalldata($tbltable);
	require "view/back-end/nice-admin-lite-master/nice-html/donhang/donhang.php";
		break;
	case 'chitiet-dathang':
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $table="dat_hang";
    $table1="chitiet_dathang";
    $thuoctinh1="madat";
    $dataid=$db->joinbang($table,$table1,$masua);
	}
	require "view/back-end/nice-admin-lite-master/nice-html/donhang/chitiet.php";
		break;
	case 'xoa-donhang':
	if (isset($_GET['maxoa'])) {
    $maxoa=$_GET['maxoa'];
    $tbltable="dat_hang";
    $thuoctinh="madat";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-donhang');
    }

}
		break;
	// binhluan
	case 'show-binhluan':
	$tbltable="binhluan";
	$data=$db->getalldatabl($tbltable);

	require "view/back-end/nice-admin-lite-master/nice-html/binhluan/binhluan.php";
		break;
	case 'chitietbl':
	if (isset($_GET['chitiet'])) {
    $chitiet=$_GET['chitiet'];
    $dataid=$db->getalldatabll($chitiet);
	}
	require "view/back-end/nice-admin-lite-master/nice-html/binhluan/chitietbl.php";
		break;
	case 'xoa-binhluan':
	if (isset($_GET['maxoa'])) {
    $maxoa=$_GET['maxoa'];
    $tbltable="binhluan";
    $thuoctinh="idbl";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-binhluan');
    }

}
	// require "view/back-end/nice-admin-lite-master/nice-html/giaodien/index.php";
		break;
	//taikhoan
	case 'show-taikhoan':
	$tbltable="taikhoan";
	$data=$db->getalldata($tbltable);
	require "view/back-end/nice-admin-lite-master/nice-html/taikhoan/taikhoan.php";
		break;
	case 'sua-taikhoan':
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
     $tbltable="taikhoan";
    $thuoctinh="user";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);
    //lấy thông tin vai trò
    if (isset($_POST['update_taikhoan'])) {
    $vaitro=$_POST['vaitro'];
    $data=[
		"vaitro"=>"$vaitro",
		];
    if ($db-> updatedata("taikhoan",$data,$masua,"user")) {
    	header('Location:index.php?controller=thanh-vien&action=show-taikhoan');
    }
    }
	}
	require "view/back-end/nice-admin-lite-master/nice-html/taikhoan/sua.php";
		break;
	case 'sua-nhahang':
	require "view/back-end/nice-admin-lite-master/nice-html/giaodien/index.php";
		break;
	case 'xoa-nhahang':
	require "view/back-end/nice-admin-lite-master/nice-html/giaodien/index.php";
		break;
	// setting
	case 'show-setting':
	$tbltable="setting";
	$data=$db->getalldata($tbltable);
	require "view/back-end/nice-admin-lite-master/nice-html/setting/setting.php";
		break;
	case 'add-setting':
	if (isset($_POST['btn_luu'])) {
	$tencty=$_POST['tencty'];
    $email=$_POST['email'];
    $sdt=$_POST['sdt'];
    $tbltable="setting";
    $diachi=$_POST['diachi'];
    $nameA=$_FILES['logo']['name'];
    $tmA=$_FILES['logo']['tmp_name'];
    move_uploaded_file($tmA,"images/".$nameA);
    if(empty($_FILES['logo']['name'])){
    $nameA=$dataid['logo'];
    }
    $data=[
		"tencty"=>"$tencty",
		",email"=>"$email",
		",sdt"=>"$sdt",
		",diachi"=>"$diachi",
		",logo"=>"$nameA",
		];
		if ($db->insertdata($tbltable,$data)) {
			header('Location:index.php?controller=thanh-vien&action=show-setting');
		}
		else{
			echo "lỗi";
		}
		
	}
	require "view/back-end/nice-admin-lite-master/nice-html/setting/them.php";
		break;
	case 'sua-setting':
	if (isset($_GET['masua'])) {
    $masua=$_GET['masua'];
    $tbltable="setting";
    $thuoctinh="id";
    $dataid=$db->getdataid($tbltable,$masua,$thuoctinh);

    if (isset($_POST['update_setting'])) {
    $tencty=$_POST['tencty'];
    $email=$_POST['email'];
    $sdt=$_POST['sdt'];
    $diachi=$_POST['diachi'];
    $nameA=$_FILES['logo']['name'];
    $tmA=$_FILES['logo']['tmp_name'];
    move_uploaded_file($tmA,"images/".$nameA);
    if(empty($_FILES['logo']['name'])){
    $nameA=$dataid['logo'];
    }
    $data=[
		"tencty"=>"$tencty",
		",email"=>"$email",
		",sdt"=>"$sdt",
		",diachi"=>"$diachi",
		",logo"=>"$nameA",
		];
    if ($db-> updatedata("setting",$data,$masua,"id")) {
    	header('Location:index.php?controller=thanh-vien&action=show-setting');
    }
    }

   }
	require "view/back-end/nice-admin-lite-master/nice-html/setting/sua.php";
		break;
	case 'xoa-setting':
	if (isset($_GET['maxoa'])) {
    $maxoa=$_GET['maxoa'];
    $tbltable="setting";
    $thuoctinh="id";
    if ($db-> detedm($maxoa,$tbltable,$thuoctinh)) {
    	header('Location:index.php?controller=thanh-vien&action=show-setting');
    }

  }
	// require "view/back-end/nice-admin-lite-master/nice-html/giaodien/index.php";
		break;
	//mặc định
	default:
	require_once "view/back-end/nice-admin-lite-master/nice-html/giaodien/index.php";
		break;
}

 ?>