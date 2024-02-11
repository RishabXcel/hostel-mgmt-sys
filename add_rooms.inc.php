<?php
require 'includes/config.inc.php';


  $hostelType = $_POST['hostel_type'];
  $roomNo = $_POST['room_no'];

        $sql = "INSERT INTO room (Hostel_id, Room_No) VALUES ($hostelType, $roomNo)";
          //  mysqli_stmt_bind_param($stmt, "ssssssss",'$username', $fname, $lname, $mobile, $HostelID, $email, $hashedPwd, $zz);
          //  mysqli_stmt_execute($stmt);
          $result = mysqli_query($conn, $sql);
          if($result){
            header("Location: ../hostel/add_rooms.php?added=success");
          }
          else {
            header("Location: ../hostel/add_rooms.php?added=failure");
          }

 ?>


