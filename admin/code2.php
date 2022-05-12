<?php
$con = mysqli_connect("localhost","root","","phptutorials");

if(isset($_POST['stud_delete_multiple_btn']))
{
    $all_id = $_POST['stud_delete_id'];
    $extract_id = implode(',' , $all_id);
    // echo $extract_id;

    $query = "DELETE FROM student WHERE id IN($extract_id) ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        header("Location: index.php");
    }
    else
    {
        header("Location: index.php");
    }
}
?>