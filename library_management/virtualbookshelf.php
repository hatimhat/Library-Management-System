<?php
session_start();
include ('connection.php');
$name = $_SESSION['user_name'];
$ids = $_SESSION['id'];
if(empty($ids))
{
    header("Location: index.php");
}

?>

<?php include('include/header.php'); ?>
    <div id="wrapper">

        <?php include('include/side-bar.php'); ?>

        <div id="content-wrapper">

            <div class="container-fluid">

                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Virtual Bookshelf</a>
                    </li>

                </ol>
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-info-circle"></i>
                        VIrtual links</div>
                        <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                                                                        <tr>

                                                                                                <th> id </th>
                                                                                                <th>Book Name</th>
                                                                                                <th>Book Author</th>
                                                                                                 <th>Link</th>
                                                                                                  </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                         $select_query = mysqli_query($conn, "select * from tbl_book");
                                        $sn = 1;
                                        while($row = mysqli_fetch_array($select_query))
                                        {
                                            ?>
                                            <tr>
                                                <td><?php echo $sn; ?></td>
                                                <td><?php echo $row['book_name']; ?></td>

                                                <td><?php echo $row['author']; ?></td>
                                                 <td><a href=<?php echo $row['virtual_link']; ?>><button>Click me</button></a></td>
                                                                               <?php  ?>   </tr>
                                                                 <?php $sn++; } ?>
                                                  </tbody>

                                    </table>
            </div>
            </div>
            </div>
            <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<?php include('include/footer.php'); ?>