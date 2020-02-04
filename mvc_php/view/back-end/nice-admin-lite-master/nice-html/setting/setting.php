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
     <div class="haha"><br>
          <a href="index.php?controller=thanh-vien&action=add-setting"><button type="button" class="btn btn-success">Thêm Mới</button></a><br><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">Tên Công ty</th>
                            <th scope="col">Email</th>
                            <th scope="col">Số Điện Thoại</th>
                            <th scope="col">Địa Chỉ</th>
                            <th scope="col">Logo</th>
                            <th scope="col">Sửa</th>
                            <th scope="col">Xóa</th>
                        </tr>
                    </thead>
                   <?php
        foreach ($data as $key => $row){
        ?>
                    <tbody>
                        <tr>
                            <td><?php echo $row['id']; ?></td>
                            <td><?php echo $row['tencty']; ?></td>
                            <td><?php echo $row['email']; ?></td>
                            <td><?php echo $row['sdt']; ?></td>
                            <td><?php echo $row['diachi']; ?></td>
                             <td><img src="images/<?php echo $row['logo']; ?>" alt="" width="50"></td>
                             <td><a href="index.php?controller=thanh-vien&action=sua-setting&masua=<?php echo $row['id']?>"><button type="button" class="btn btn-success"><ion-icon name="construct"></ion-icon></button></a></td>
                            <td><a href="index.php?controller=thanh-vien&action=xoa-setting&maxoa=<?php echo $row['id']?>; ?>" onclick="return confirm('bạn có muốn xóa không?')"><button type="button" class="btn btn-success"><ion-icon name="trash"></ion-icon></button></a></td>
                        

                        </tr>
                    </tbody>


                    <?php
        }
        ?>
                </table>
                
            </div>
</body>
</html>
