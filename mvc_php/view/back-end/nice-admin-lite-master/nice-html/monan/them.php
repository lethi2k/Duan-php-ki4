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
                <h2>Thêm Sản Phẩm</h2><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping" >Tên Sản Phẩm</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Tên Sản Phẩm" name="tensp" aria-label="Tên Sản Phẩm" aria-describedby="addon-wrapping">
                </div><br>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                    </div>
                    <div class="custom-file">
                        <input type="file" name="anhdd" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                        <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                    </div>
                </div><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Giá </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Giá " name="gia" aria-label="Giá " aria-describedby="addon-wrapping">
                </div><br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Giảm Giá</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Giảm Giá" name="giamgia" aria-label="Giảm Giá" aria-describedby="addon-wrapping">
                </div><br>
                <br>
                <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Phí Ship</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Số Lượng" name="soluong" aria-label="Số Lượng" aria-describedby="addon-wrapping">
                </div>
                <br>
                 <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">Nhà hàng</label>
                    </div>
                    <select class="custom-select" id="inputGroupSelect01" name="idnh" >
                        <?php 
                        foreach ($data as $key => $row){
                        ?>
                        <option  selected value="<?php echo $row['idnh'];?>" ><?php echo $row['tennh']; ?></option>
                        <?php } ?>
                    </select>
                </div>
                <br>
                  <div class="input-group flex-nowrap">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon-wrapping">Chi Tiết Sản Phẩm</span>
                        <div id="sample">
                            <textarea name="area1" cols="210" class="ha">
                </textarea>
                        </div>
                    </div>
                </div>
                <br>
                <button type="submit" class="btn btn-success" name="btn_luu">Thêm</button>
            </form>
    </article>           
</div>
</body>
</html>
