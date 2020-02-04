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
        <br>
                <a href="index.php?controller=thanh-vien&action=add-danhmuc"><button type="button" class="btn btn-success">Thêm Mới Danh Mục</button></a><br><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên Danh Mục</th>
                            <th scope="col">Logo</th>
                            <th scope="col">Sửa</th>
                            <th scope="col">Xóa</th>
                        </tr>
                    </thead>
                    <?php
        foreach ($data as $key => $row){
            ob_start();
        ?>
                    <tbody>
                        <tr>
                            <td><?php echo $key+1; ?></td>
                            <td><?php echo $row['tendm']; ?></td>
                            <td><img src="images/<?php echo $row['logo']; ?>" alt="" width="50"></td>
                            <td><a href="index.php?controller=thanh-vien&action=sua-danhmuc&masua=<?php echo $row['iddm']?>"><button type="button" class="btn btn-success"><ion-icon name="construct"></ion-icon></button></a></td>
                            <td><a href="index.php?controller=thanh-vien&action=xoa-danhmuc&maxoa=<?php echo $row['iddm']?>" onclick="return confirm('bạn có muốn xóa không?')"><button type="button" class="btn btn-success"><ion-icon name="trash"></ion-icon></button></a></td>                      
                        </tr>
                    </tbody>    
                    <?php
        }
        ?>
                </table>
                
            </div>
</body>
</html>
