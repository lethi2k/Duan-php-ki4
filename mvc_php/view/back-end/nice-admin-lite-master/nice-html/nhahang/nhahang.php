<?php 
include "header.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"> </script>
    <style>
        .haha {
            margin: 0px auto;
            padding: 10px;
            margin-left: 250px;
        }
    </style>
</head>
<body>
     <div class="haha">
                <a href="index.php?controller=thanh-vien&action=add-nhahang"><button type="button" class="btn btn-success">Cập Nhập Thông Tin Nhà Hàng</button></a><br><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên nha hang</th>
                            <th scope="col">logo</th>
                            <th scope="col">Tên ảnh đại diện</th>
                            <th scope="col">dia chi</th>
                            <th scope="col">Gia cao nhat</th>
                            <th scope="col">gia thap nhat</th>                          
                            <th scope="col">mota</th>
                            <th scope="col">view</th>
                            <th scope="col">mo cua</th>
                            <th scope="col">dong cua</th>
                            <th scope="col">user</th>
                            <th scope="col">Danh Mục</th>
                            <th scope="col">Sửa</th>
                            <th scope="col">Xóa</th>
                        </tr>
                    </thead>
                    <?php
        foreach ($data as $key => $row){
        ?>
                    <tbody>
                        <tr>
                            <td><?php echo $row['idnh']; ?></td>
                            <td><?php echo $row['tennh']; ?></td>
                             <td><img src="images/<?php echo $row['logo']; ?>" alt="" width="50"></td>
                            <td><img src="images/<?php echo $row['anhdd']; ?>" alt="" width="50"></td>
                            <td><?php echo $row['diachi']; ?></td>
                            <?php 
                                    $gia=$row['giacaonhat'];
                                    $giamgia=$row['giathapnhat'];

                                 ?>
                            <td><?php echo number_format("$gia",3); ?></td>
                            <td><?php echo number_format("$giamgia",3); ?></td>
                            <td><?php echo $row['mota']; ?></td>
                            <td><?php echo $row['view']; ?></td>
                            <td><?php echo $row['mocua']; ?></td>
                            <td><?php echo $row['dongcua']; ?></td>
                            <td><?php echo $row['user']; ?></td>
                            <?php 
                            $idnh=$row['iddm']; 
                            $tbltable="danhmuc";
                            $thuoctinh="iddm";
                            $dataid=$db->getdataid($tbltable,$idnh,$thuoctinh);
                            ?>
                            <td><?php echo $dataid['tendm']; ?></td>
                            <td><a href="index.php?controller=thanh-vien&action=sua-nhahang&masua=<?php echo $row['idnh']?>"><button type="button" class="btn btn-success"><ion-icon name="construct"></ion-icon></button></a></td>
                            <td><a href="index.php?controller=thanh-vien&action=xoa-nhahang&maxoa=<?php echo $row['idnh']?>; ?>" onclick="return confirm('bạn có muốn xóa không?')"><button type="button" class="btn btn-success"><ion-icon name="trash"></ion-icon></button></a></td>
                        </tr>
                    </tbody>


                    <?php
        }
        ?>
                </table>
                
            </div>
</body>
</html>
