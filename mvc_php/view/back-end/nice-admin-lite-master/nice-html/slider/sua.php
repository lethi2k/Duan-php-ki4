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
            <form action="" method="post" enctype="multipart/form-data">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Logo</th>
                            <th scope="col">Tiêu Đề</th>
                            <th scope="col">Trạng Thái</th>
                            <th scope="col">Link</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><img src="images/<?php echo $dataid['anhdd']?>" alt="" width="50"><br><br>
                                <input type="file"  name="logo" width="50"></td>
                            <td><input type="text" class="form-control" name="tieude" value="<?php echo $dataid['tieude']?>"></td>
                        <td>
                            <select class="custom-select" id="inputGroupSelect01" name="trangthai" >                       
                            <option  selected value="0" >Ẩn</option>
                            <option  selected value="1" >Hiện</option>
                            </select>
                        </td>
                            <td><input type="text" class="form-control" name="link" value="<?php echo $dataid['link']?>"></td>
                        </tr>
                    </tbody>
                </table>
                <button type="submit" class="btn btn-success" name="btn_luu">Sửa</button>
            </form>
        </div>

</body>
</html>
