 <?php require "header.php"?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script>
    <script type="text/javascript">
        //<![CDATA[
        bkLib.onDomLoaded(function() {
            nicEditors.allTextAreas()
        });
        //]]>
    </script>
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
<article>
                <form action="" method="post" enctype="multipart/form-data">
                <h2>Sửa Nhà Hàng</h2><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping" >Tên Nhà Hàng</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Tên Sản Phẩm" value="<?php echo $dataid['tennh'] ?>" name="tennh" aria-label="Tên Sản Phẩm" aria-describedby="addon-wrapping">
                </div><br>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroupFileAddon01">Logo</span>
                    </div>
                    <div class="custom-file">
                        <img src="images/<?php echo $dataid['logo']?>" alt="" width="50">
                    <input type="file" name="logo"><br>
                    </div>
                </div><br>
                 <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroupFileAddon01">ảnh đại diện</span>
                    </div>
                    <div class="custom-file">
                        <img src="images/<?php echo $dataid['anhdd']?>" alt="" width="50">
                    <input type="file" name="anhdd"><br>
                    </div>
                </div><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping" >Địa chỉ</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Tên Sản Phẩm" value="<?php echo $dataid['diachi'] ?>" name="diachi" aria-label="Tên Sản Phẩm" aria-describedby="addon-wrapping">
                </div><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Giá thấp nhất</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Giá " name="giathapnhat" value="<?php echo $dataid['giathapnhat'] ?>" aria-label="Giá " aria-describedby="addon-wrapping">
                </div><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Giảm cao nhất</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Giảm Giá" name="giacaonhat" value="<?php echo $dataid['giacaonhat'] ?>" aria-label="Giảm Giá" aria-describedby="addon-wrapping">
                </div><br>
                <br>
               
                 <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">view</span>
                    </div>
                    <input type="text" class="form-control" placeholder="view" value="<?php echo $dataid['view'] ?>" name="view" aria-label="view" aria-describedby="addon-wrapping">
                </div>
                <br>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">User</label>
                    </div>
                    <select class="custom-select" id="inputGroupSelect01" name="user" >
                        <?php 
                        foreach ($user as $key => $row){
                        ?>
                        <option  selected value="<?php echo $row['user'];?>" ><?php echo $row['user']; ?></option>
                        <?php } ?>
                    </select>
                </div>
                <br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">mô tả</span>
                        <div id="sample">
                            <textarea name="mota" cols="220" class="ha"><?php echo $dataid['mota'] ?>
                </textarea>
                        </div>
                    </div>
                </div>
                <br>
                 <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">Danh Mục</label>
                    </div>
                    <select class="custom-select" id="inputGroupSelect01" name="iddm" >
                        <?php 
                        foreach ($data as $key => $row){
                        ?>
                        <option  selected value="<?php echo $row['iddm'];?>" ><?php echo $row['tendm']; ?></option>
                        <?php } ?>
                    </select>
                </div>
                <br>
                <button type="submit" class="btn btn-success" name="btn_luu">Sửa</button>
            </form>
    </article>           
</div>
</body>
</html>
