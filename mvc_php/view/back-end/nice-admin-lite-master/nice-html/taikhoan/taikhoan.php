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
        input{
            border: 0px;
            background-color: #dee2e6;
        }
    </style>
</head>
<body>
     <div class="haha">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">User</th>
                            <th scope="col">Pass</th>
                            <th scope="col">Ảnh Đại Diện</th>
                            <th scope="col">Vai Trò</th>
                            <th scope="col">Cấp Quyền</th>
                            
                        </tr>
                    </thead>
                   <?php
        foreach ($data as $key => $row){
        ?>
                    <tbody>
                        <tr>
                            <td><?php echo $row['user']; ?></td>
                            <td><?php echo md5($row['pass']); ?></td>
                            <td><?php echo $row['anhdd']; ?></td>
                             <?php if ($row['vaitro']==1) {
                            ?>
                            <td><button type="button" class="btn btn-success">Shipper</button></td>
                            <?php } ?>
                            <?php if ($row['vaitro']==0) {
                            ?>
                            <td><button type="button" class="btn btn-success">Thành Viên</button></td>
                            <?php } ?>
                            <?php if ($row['vaitro']==2) {
                            ?>
                            <td><button type="button" class="btn btn-success">Nhà Hàng</button></td>
                            <?php } ?>
                             <?php if ($row['vaitro']==3) {
                            ?>
                            <td><button type="button" class="btn btn-success">Quản Trị</button></td>
                            <?php } ?>
                             <td><a href="index.php?controller=thanh-vien&action=sua-taikhoan&masua=<?php echo $row['user']?>"><button type="button" class="btn btn-success"><ion-icon name="construct"></ion-icon></button></a></td>

                        </tr>
                    </tbody>


                    <?php
        }
        ?>
                </table>
                
            </div>
</body>
</html>
