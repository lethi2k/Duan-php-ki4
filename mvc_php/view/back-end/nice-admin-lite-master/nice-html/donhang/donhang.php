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
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Mã Đặt</th>
                            <th scope="col">Tài Khoản</th>
                            <th scope="col">ngày đặt</th>
                            <th scope="col">Tên Nhà Hàng</th>
                            <th scope="col">Chi Tiết Đơn Hàng</th>
                            <th scope="col">Xóa</th>
                        </tr>
                    </thead>
                   <?php
        foreach ($data as $key => $row){
        ?>
                    <tbody>
                        <tr>
                            <td><?php echo $row['madat']; ?></td>
                            <td><?php echo $row['user']; ?></td>
                            <td><?php echo $row['ngaydat']; ?></td>
                            <?php 
                            $idnh=$row['idnh']; 
                            $tbltable="nhahang";
                            $thuoctinh="idnh";
                            $dataid=$db->getdataid($tbltable,$idnh,$thuoctinh);
                            ?>
                             <td><?php echo $dataid['tennh']; ?></td>
                            <td><a href="index.php?controller=thanh-vien&action=chitiet-dathang&masua=<?php echo $row['madat']?>"><button type="button" class="btn btn-success"><ion-icon name="construct"></ion-icon></button></a></td>
                            <td><a href="index.php?controller=thanh-vien&action=xoa-donhang&maxoa=<?php echo $row['madat']?>; ?>" onclick="return confirm('bạn có muốn xóa không?')"><button type="button" class="btn btn-success"><ion-icon name="trash"></ion-icon></button></a></td>
                        

                        </tr>
                    </tbody>


                    <?php
        }
        ?>
                </table>
                
            </div>
</body>
</html>
