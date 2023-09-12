<?php

include('config.php');

if(isset($_POST['submit'])){
	$u_NIK = $_POST['card_no'];
	$u_f_name = $_POST['user_first_name'];
	$u_l_name = $_POST['user_last_name'];
	$u_father = $_POST['user_father'];
	$u_Nim = $_POST['user_NIM'];
	$u_birthday = $_POST['user_dob'];
	$u_gender = $_POST['user_gender'];
	$u_email = $_POST['user_email'];
	$u_phone = $_POST['user_phone'];
	$u_state = $_POST['state'];
	$u_dist = $_POST['dist'];
	$u_village = $_POST['village'];
	$u_semester = $_POST['semester_ini'];
	$u_pincode = $_POST['pincode'];
	$u_mother = $_POST['user_mother'];
	$u_essai = $_POST['essai'];
	$u_status_ajuan = $_POST['status_ajuan'];
	

	//image upload

	$msg = "";
	$image = $_FILES['image']['name'];
	$target = "upload_images/".basename($image);

	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "Image uploaded successfully";
  	}else{
  		$msg = "Failed to upload image";
  	}

  	$insert_data = "INSERT INTO student_data(u_NIK, u_f_name, u_l_name, u_father, u_Nim, u_birthday, u_gender, u_email, u_phone, u_state, u_dist, u_village, u_semester, u_pincode, u_mother, u_essai, status_ajuan,image,uploaded) VALUES ('$u_card','$u_f_name','$u_l_name','$u_father','$u_NIM','$u_birthday','$u_gender','$u_email','$u_phone','$u_state','$u_dist','$u_village','$u_semester','$u_pincode','$u_mother','$u_essai','$u_status_ajuan','$image',NOW())";
  	$run_data = mysqli_query($con,$insert_data);

  	if($run_data){
		  $added = true;
  	}else{
  		echo "Data not insert";
  	}

}

?>