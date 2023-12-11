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
   <?php
// Process the user feedback

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve user feedback information from the form
    $uname = $_POST['uname'];
    $email = $_POST['email'];
    $comment = $_POST['comment'];

    // Check the connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Insert the feedback into the 'feedback_table' table
    $sql = "INSERT INTO feedback_table (name, email, comment) VALUES ('$uname', '$email', '$comment')";

    if ($conn->query($sql) === TRUE) {
        echo "Feedback submitted successfully. Thank you!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close the connection
    $conn->close();
}
?>

<?php include('include/header.php'); ?>
    <div id="wrapper">

        <?php include('include/side-bar.php'); ?>
         <div id="content-wrapper">

      <div class="container-fluid">
                       <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Submit Feedback</a>
          </li>

        </ol>
                <div class="card mb-3">
          <div class="card-header">
            <i class="fa fa-info-circle"></i>
            Submit Feedback Details</div>
            <form method="post" class="form-valide">
          <div class="card-body">
                                        <div class="form-group row">
                                      <label class="col-lg-4 col-form-label" for="item">Name <span class="text-danger">*</span></label>
                                       <div class="col-lg-6">
                                      <input type="text" name="uname" id="uname" class="form-control" placeholder="Name" required>
                                       </div>
                                  </div>
                                       <div class="form-group row">
                                      <label class="col-lg-4 col-form-label" for="item">Email <span class="text-danger">*</span></label>
                                       <div class="col-lg-6">
                                      <input type="text" name="email" id="email" class="form-control" placeholder="Email id" required>
                                       </div>
                                  </div>
                                   <div class="form-group row">
                                      <label class="col-lg-4 col-form-label" for="item">Comment box <span class="text-danger">*</span></label>
                                       <div class="col-lg-6">
                                      <input type="text" name="comment" id="comment" class="form-control" placeholder=" Comment box" required>
                                       </div>
                                  </div>
                                  <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="submit" name="sbt-feedback-btn" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
          </form>
                </div>
                 </div>
          </div>
          </div>
