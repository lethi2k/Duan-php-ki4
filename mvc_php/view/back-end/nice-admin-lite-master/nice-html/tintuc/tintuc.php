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
         <a href="index.php?controller=thanh-vien&action=add-tintuc"><button type="button" class="btn btn-success">Thêm Mới Tin Tức</button></a><br><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">id tin tức</th>
                            <th scope="col">Tiêu đề</th>
                             <th scope="col">Logo</th>
                            <th scope="col">Mô Tả</th>
                            <th scope="col">Địa Chỉ</th>
                            <th scope="col">Chi Tiết</th>
                            <th scope="col">Ngày Đăng</th>
                            <th scope="col">User</th>
                            <th scope="col">Sửa</th>
                            <th scope="col">Xóa</th>
                        </tr>
                    </thead>
                   <?php
        foreach ($data as $key => $row){
        ?>
                    <tbody>
                        <tr>
                            <td><?php echo $row['idtt']; ?></td>
                            <td><?php echo $row['tieude']; ?></td>
                            <td><img src="images/<?php echo $row['logo']; ?>" alt="" width="50"></td>
                            <td><?php echo $row['mota']; ?></td>
                            <td><?php echo $row['diachi']; ?></td>
                            <td><a href="index.php?controller=thanh-vien&action=chitiettt&chitiet=<?php echo $row['idtt']?>"><button type="button" class="btn btn-success">Chi Tiet</button></a></td>
                            <td><?php echo $row['ngaydang']; ?></td>
                            <td><?php echo $row['user']; ?></td>
                             <td><a href="index.php?controller=thanh-vien&action=sua-tintuc&masua=<?php echo $row['idtt']?>"><button type="button" class="btn btn-success"><ion-icon name="construct"></ion-icon></button></a></td>
                            <td><a href="index.php?controller=thanh-vien&action=xoa-tintuc&maxoa=<?php echo $row['idtt']?>; ?>" onclick="return confirm('bạn có muốn xóa không?')"><button type="button" class="btn btn-success"><ion-icon name="trash"></ion-icon></button></a></td>
                        

                        </tr>
                    </tbody>


                    <?php
        }
        ?>
                </table>
                
            </div>
</body>
</html>
