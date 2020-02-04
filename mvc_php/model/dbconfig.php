<?php 
class database{
	private $hostname='localhost';
	private $username='root';
	private $pass='';
	private $dbname='duan1';

	private $conn= null;
	private $resurt=null;

	public function connect(){
		$this->conn=new mysqli($this->hostname,$this->username,$this->pass,$this->dbname);
		if (!$this->conn) {
		echo "ket noi that bai";
		exit();	
		}
		else{
			mysqli_set_charset($this->conn,'utf8');
		}
		return $this->conn;
	}

	public function execute($sql){
		$this->resurt=$this->conn->query($sql);
		return $this->resurt;
	}
//lấy dữ liệu
	public function getdata(){
		if ($this->resurt) {
			$data= mysqli_fetch_array($this->resurt);
		}
		else{
			$data=0;
		}
		return $data;
	}
//lấy toàn bộ dữ liệu
	public function getalldata($table){
		$sql="SELECT * FROM $table";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	//đơn hàng
	public function donhang($table,$idsp){
		$sql="SELECT * FROM $table WHERE idsp='$idsp'";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
		//licjh su
	public function ls($table,$idsp){
		$sql="SELECT * FROM $table WHERE user='$idsp'";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	//sắp xếp nhà hàng có đơn hàng lớn nhất
	public function maxdonhang($idnh){
		$sql="SELECT COUNT(dat_hang.idnh) AS dem FROM dat_hang JOIN nhahang ON dat_hang.idnh=nhahang.idnh WHERE dat_hang.idnh='$idnh' ORDER BY nhahang.idnh LIMIT 0,4";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	//tìm kiếm món ăn và nhà hàng theo tên
	public function search($table,$ten,$nhap){
		$sql="SELECT * FROM $table WHERE $ten LIKE '%$nhap%'";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	//lấy dữ liệu theo id danh mục
	public function getdataid($table,$masua,$thuoctinh){
		$sql="SELECT *FROM $table WHERE $thuoctinh='$masua'";
		$this->execute($sql);
		if ($this->resurt) {
			$data= mysqli_fetch_array($this->resurt);
		}
		else{
			$data=0;
		}
		return $data;
	}
	//lấy dữ liệu theo id danh mục
	public function getdatai($table,$masua,$thuoctinh,$ten){
		$sql="SELECT *FROM $table WHERE $thuoctinh='$masua' and user='$ten'";
		$this->execute($sql);
		if ($this->resurt) {
			$data= mysqli_fetch_array($this->resurt);
		}
		else{
			$data=0;
		}
		return $data;
	}
	// trả về dữ liệu dạng fetch 
	public function getdulieu($table){
		$sql="SELECT *FROM $table";
		$this->execute($sql);
		if ($this->resurt) {
			$data= mysqli_fetch_array($this->resurt);
		}
		else{
			$data=0;
		}
		return $data;
	}
	//đếm bình luận theo id sản phẩm
		public function dembl($idsp){
		$sql="SELECT COUNT(idbl) AS dem FROM binhluan JOIN monan ON binhluan.idsp=monan.idsp WHERE binhluan.idsp='$idsp' ";
		$this->execute($sql);
		if ($this->resurt) {
			$data= mysqli_fetch_array($this->resurt);
		}
		else{
			$data=0;
		}
		return $data;
	}
	//lay du lieu dang for
	public function getallid($table,$thuoctinh,$chitiet){
		$sql="SELECT * FROM $table WHERE $thuoctinh='$chitiet'";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	//bình luận
	public function getalldatabll($chitiet){
		$sql="SELECT * FROM binhluan WHERE idsp='$chitiet'";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	 //nhahang
	 public function dmnh($chitiet){
		$sql="SELECT * FROM nhahang WHERE iddm='$chitiet'";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	///group by
		public function getalldatabl($table){
		$sql="SELECT * FROM $table GROUP BY idsp";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
		///group by
		public function getalldatabllll($table){
		$sql="SELECT * FROM $table GROUP BY madat";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data[]=$datas;
			}
		}
		return $data;
	}
	//phuong thuc dem so ban ghi
  
	//phuong thuc them du lieu
	public function insertdata($table,$data){
		$sql= "insert into $table values('null";
		foreach ($data as $key => $value) {
			$sql=$sql."','".$value;
		}
		$sql=$sql."')";
		return $this->execute($sql); 
	}
	//tài khoản
	public function tk($table,$user,$pass,$anhdd){
		$sql="insert into $table values('$user','$pass','$anhdd','0')";
		return $this->execute($sql); 
	}
	//phuong thuc sua du lieu
	public function updatedata($table,$data,$iddm,$thuoctinh){
		$sql= "update $table set ";
		foreach ($data as $key => $value) {
			$sql=$sql.$key."=";
			$sql=$sql."'".$value."'";

		}
		$sql=$sql." where $thuoctinh='$iddm'";
		return $this->execute($sql); 
	}
	// public function updatedata($iddm,$tendm,$logo){
	// 	$sql= "update danhmuc set tendm='$tendm',logo='$logo' where iddm='$iddm'";
	// 	return $this->execute($sql); 
	// }
	// xoa du lieu
	public function detedm($iddm,$table,$thuoctinh){
		$sql="DELETE FROM $table WHERE $thuoctinh='$iddm'";
		return $this->execute($sql); 
	}
	//lien kết
	public function lienket($table,$table1,$column_name){
		$sql="SELECT * FROM $table INNER JOIN $table1 ON $table.$column_name = $table1.$column_name";
		return $this->execute($sql); 
	}
	//ẩn hiện slider
	public function anhien($anhien){
	$sql="select * from slider where id='$anhien'";
	$this->execute($sql);
    if ($sql) {
    	$sql="UPDATE slider SET trangthai ='0' WHERE id='$anhien'";
                     if($this->resurt){
                     echo "thành công";
                     header("Location:index.php?controller=thanh-vien&action=show-slider");
                      }
                      else{
                          echo "lỗi";
                      }
            }
    else{
    	$sql="UPDATE slider SET trangthai='1' WHERE id='$anhien'";
                     if($this->resurt){
                     echo "thành công";
                     header("location:index.php?controller=thanh-vien&action=show-slider");
                      }
                      else{
                          echo "lỗi";
                      }
            }
            return $this->execute($sql); 
	}
//đăng nhập
		public function login($tk,$mk){
	$sql = "SELECT count(*) FROM taikhoan WHERE user='$tk' and pass='$mk'";
	$data=$this->execute($sql)->fetch_array();
    return $data;
    }
    public function check($tk,$mk){
    	 $sql="SELECT * FROM taikhoan WHERE user='$tk' and pass='$mk'";
    	 $this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data=$datas;
			}
		}
		return $data;
    }
    //liet kết qua khóa ngọai
    public function joinbang($table,$table1,$masua){
		$sql="SELECT * FROM $table INNER JOIN $table1 ON $table.madat=$table1.madat WHERE $table.madat='$masua'";
		$this->execute($sql);
		if(!$this->resurt) {
			$data=0;
		}
		else{
			while($datas=$this->getdata()){
				$data=$datas;
			}
		}
		return $data;
	}
//đóng class
}

?>