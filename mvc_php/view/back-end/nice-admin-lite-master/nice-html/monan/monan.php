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
                <a href="index.php?controller=thanh-vien&action=add-monan"><button type="button" class="btn btn-success">Thêm Mới Sản Phẩm</button></a><br><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên Sản Phẩm</th>
                            <th scope="col">Tên ảnh đại diện</th>
                            <th scope="col">Giảm giá</th>
                            <th scope="col">Giá Gốc</th>
                            <th scope="col">view</th>
                            <th scope="col">phiship</th>
                            <th scope="col">Chi Tiết Sp</th>
                            <th scope="col">Nhà Hàng</th>
                            <th scope="col">Sửa</th>
                            <th scope="col">Xóa</th>
                        </tr>
                    </thead>
                    <?php
        foreach ($data as $key => $row){
        ?>
                    <tbody>
                        <tr>
                            <td><?php echo $row['idsp']; ?></td>
                            <td><?php echo $row['tensp']; ?></td>
                            <td><img src="images/<?php echo $row['anhdd']; ?>" alt="" width="50"></td>
                            <?php 
                                    $gia=$row['gia'];
                                    $giamgia=$row['giamgia'];

                                 ?>
                            <td><?php echo number_format("$gia",3); ?></td>
                            <td><?php echo number_format("$giamgia",3); ?></td>
                            <td><?php echo $row['view']; ?></td>
                            <td><?php echo $row['phiship']; ?></td>
                            <td><a href="index.php?controller=thanh-vien&action=chitietsp&chitiet=<?php echo $row['idsp']?>"><button type="button" class="btn btn-success">Chi Tiet</button></a></td>
                             <?php 
                            $idnh=$row['idnh']; 
                            $tbltable="nhahang";
                            $thuoctinh="idnh";
                            $dataid=$db->getdataid($tbltable,$idnh,$thuoctinh);
                            ?>
                            <td><?php echo $dataid['tennh']; ?></td>
                            <td><a href="index.php?controller=thanh-vien&action=sua-monan&masua=<?php echo $row['idsp']?>"><button type="button" class="btn btn-success"><ion-icon name="construct"></ion-icon></button></a></td>
                            <td><a href="index.php?controller=thanh-vien&action=xoa-monan&maxoa=<?php echo $row['idsp']?>; ?>" onclick="return confirm('bạn có muốn xóa không?')"><button type="button" class="btn btn-success"><ion-icon name="trash"></ion-icon></button></a></td>
                        

                        </tr>
                    </tbody>


                    <?php
        }
        ?>
                </table>
                
            </div>
</body>
</html>
