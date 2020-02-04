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
                <h2>Sửa Tin</h2><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping" >Tiêu Đề </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Tên Sản Phẩm" name="tieude" aria-label="Tên Sản Phẩm" aria-describedby="addon-wrapping" value="<?php echo $dataid['tieude']?>">
                </div><br>
               <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                    </div>
                    <div class="custom-file">
                    <img src="images/<?php echo $dataid['logo']?>" alt="" width="50">
                    <input type="file" name="anhdd"><br>
                    </div>
                </div><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Mô Tả </span>
                    </div>
                    <input type="text" class="form-control" name="mota" aria-label="Giá " aria-describedby="addon-wrapping" value="<?php echo $dataid['mota']?>">
                </div><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Địa Chỉ</span>
                    </div>
                    <input type="text" class="form-control" name="diachi" aria-label="Giảm Giá" aria-describedby="addon-wrapping" value="<?php echo $dataid['diachi']?>">
                </div><br>
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
                        <span class="input-group-text" id="addon-wrapping">Chi Tiết Sản Phẩm</span>
                        <div id="sample">
                            <textarea name="chitiet" cols="210" class="ha"><?php echo $dataid['chitiet']?></textarea>
                        </div>
                    </div>
                </div>
                <br>
                <button type="submit" class="btn btn-success" name="btn_luu">Sửa</button>
            </form>
    </article>           
</div>
</body>
</html>
