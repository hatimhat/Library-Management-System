<?php
session_start();
include ('../connection.php');
$name = $_SESSION['name'];
$id = $_SESSION['id'];
if(empty($id))
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
                        <a href="#">View Feedback</a>
                    </li>

                </ol>
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-info-circle"></i>
                        View Feedback Details</div>
                        <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                                                                        <tr>
                                                                                                <th>S.No.</th>
                                                                                                <th>Name</th>
                                                                                                <th>Email</th>
                                                                                                 <th>Comment</th>
                                                                                                  </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                         $select_query = mysqli_query($conn, "select * from feedback_table");
                                        $sn = 1;
                                        while($row = mysqli_fetch_array($select_query))
                                        {
                                            ?>
                                            <tr>
                                                <td><?php echo $sn; ?></td>
                                                <td><?php echo $row['name']; ?></td>

                                                <td><?php echo $row['email']; ?></td>
                                                <td><?php echo $row['comment']; ?></td>   </tr>
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