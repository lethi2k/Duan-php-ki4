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
            <th scope="col">Tên Công Ty</th>
            <th scope="col">Email</th>
            <th scope="col">Số Điện Thoại</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Logo</th>
            </tr>
        </thead>
    <tbody>
        <tr>
            <td><input type="text" class="form-control" aria-label="Thêm Danh Mục" aria-describedby="addon-wrapping" name="tencty" ></td>
            <td><input type="text" class="form-control" aria-label="Thêm Danh Mục" aria-describedby="addon-wrapping" name="email" ></td>
            <td><input type="text" class="form-control" aria-label="Thêm Danh Mục" aria-describedby="addon-wrapping" name="sdt" ></td>
            <td><input type="text" class="form-control" aria-label="Thêm Danh Mục" aria-describedby="addon-wrapping" name="diachi"></td>
              <td>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" name="logo" minlength="1" required>
                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                </div>
            </td>
        </tr>
    </tbody>
    </table>
    <button type="submit" class="btn btn-success" name="btn_luu">Thêm</button>
    </form>
        </div>

</body>
</html>
