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
                            <th scope="col">Mã Món</th>
                            <th scope="col">Người đặt</th>
                            <th scope="col">Mã Đặt</th>
                            <th scope="col">Id sản Phẩm</th>  
                            <th scope="col">Ảnh Sản Phẩm</th>
                            <th scope="col">ngày đặt</th>
                        </tr>
                    </thead>
                  <tbody>
        <tr>
            <td><?php echo $dataid['mamon']; ?></td>
            <td><?php echo $dataid['user']; ?></td>
             <td><?php echo $dataid['madat']; ?></td>
                            <?php 
                            $idnh=$dataid['idsp'];
                            $tbltable="monan";
                            $thuoctinh="idsp";
                            $data=$db->getdataid($tbltable,$idnh,$thuoctinh);
                            ?>
              <td><?php echo $data['tensp'] ?></td>
              <td><img src="images/<?php echo $data['anhdd']; ?>" alt="" width="50"></td>
             <td> <?php echo $dataid['ngaydat']; ?></td>
        </tr>
    </tbody>
        </table>
                
            </div>
</body>
</html>
