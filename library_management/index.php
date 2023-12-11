<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['button1'])) {
        // Redirect to Page 1
        header("Location:user.php");
        exit();
    } elseif (isset($_POST['button2'])) {
        // Redirect to Page 2
        header("Location: admin/index.php");
        exit();
    }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">


    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Library Management System</title>
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/custom_style.css?ver=1.1" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css' rel='stylesheet' />
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Button Click</title>
</head>

   <body class="bg-dark" style="background: url(img/library-img-bg.jpg) no-repeat;  background-size:cover">
         <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">
       <h2><center style="color:coral;"> Library Management System </center></h2>
      </div>
      <div class="card-body">
    <h3><center style="color:BLack;"> User Login </center></h2>

<div class="container-fluid">
    <div class="row justify-content-center mt-5">
        <div class="col-6">

            <!-- Bootstrap Button with Action -->
            <a href="user.php" class="btn btn-primary btn-block">User</a>
        </div>
    </div>
</div>
        <h3><center style="color:Black;"> Admin Login </center></

<div class="container-fluid">
    <div class="row justify-content-center mt-5">
        <div class="col-6">
            <!-- Bootstrap Button with Action -->
            <a href="admin/index.php" class="btn btn-primary btn-block">Admin</a>
        </div>
    </div>
</div>



      </div>
    </div>
  </div>



</body>
</html>
