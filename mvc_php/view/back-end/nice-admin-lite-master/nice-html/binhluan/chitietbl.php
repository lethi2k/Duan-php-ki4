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

                            <th scope="col">Nội Dung</th>
                            <th scope="col">Người Đăng</th>
                            <th scope="col">Ngày Đăng</th>
                            <th scope="col">Xóa BL</th>
                        </tr>
                    </thead>
                    <?php 
                    foreach ($dataid as $key => $row){
                    ?>
                    <tbody>
                        <tr>                            
                            <td><?php echo $row['noidung']?></td>           
                            <td><?php echo $row['user']?></td>
                            <td><?php echo $row['ngaydang']?></td>
                            <td><a href="index.php?controller=thanh-vien&action=xoa-binhluan&maxoa=<?php echo $row['idbl']?>; ?>" onclick="return confirm('bạn có muốn xóa không?')"><button type="button" class="btn btn-success">Xóa</button></a></td>             
                        </tr>
                    </tbody>
                <?php } ?>
      </table>
            </div>
</body>
</html>
