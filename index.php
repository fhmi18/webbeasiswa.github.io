<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
// database connection
include('config.php');

$added = false;


//Add  new student code 

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

  	$insert_data = "INSERT INTO student_data(u_NIK, u_f_name, u_l_name, u_father, u_Nim, u_birthday, u_gender, u_email, u_phone, u_state, u_dist, u_village, u_semester, u_pincode, u_mother, u_essai, status_ajuan,image,uploaded) VALUES ('$u_NIK','$u_f_name','$u_l_name','$u_father','$u_Nim','$u_birthday','$u_gender','$u_email','$u_phone','$u_state','$u_dist','$u_village','$u_semester','$u_pincode','$u_mother','$u_essai','$u_status_ajuan','$image',NOW())";
  	$run_data = mysqli_query($con,$insert_data);

  	if($run_data){
		  $added = true;
  	}else{
  		echo "Data not insert";
  	}

}

	

?>







<!DOCTYPE html>
<html>
<head>
	<title>Beasiswa</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
<a href="https://beasiswaunggulan.kemdikbud.go.id/app/login" target="_blank"><img src="https://beasiswaunggulan.kemdikbud.go.id/wp-content/uploads/2023/05/logo-siunggul-full.png" alt="" width="400px" ></a><br><hr>

<!-- adding alert notification  -->
<?php
	if($added){
		echo "
			<div class='btn-success' style='padding: 15px; text-align:center;'>
				data beasiswamu berhasil.
			</div><br>
		";
	}

?>





	<a href="logout.php" class="btn btn-success"><i class="fa fa-lock"></i> Logout</a>
	<button class="btn btn-success" type="button" data-toggle="modal" data-target="#myModal">
  <i class="fa fa-plus"></i> Daftar Beasiswa
  </button>
  <hr>
		<table class="table table-bordered table-striped table-hover" id="myTable">
		<thead>
			<tr>
			   <th class="text-center" scope="col">S.L</th>
				<th class="text-center" scope="col">Name</th>
				<th class="text-center" scope="col">NIK</th>
				<th class="text-center" scope="col">Phone</th>
				<th class="text-center" scope="col">status_ajuan</th>
				<th class="text-center" scope="col">View</th>
				<th class="text-center" scope="col">Edit</th>
				<th class="text-center" scope="col">Delete</th>
			</tr>
		</thead>
			<?php

        	$get_data = "SELECT * FROM student_data order by 1 desc";
        	$run_data = mysqli_query($con,$get_data);
			$i = 0;
        	while($row = mysqli_fetch_array($run_data))
        	{
				$sl = ++$i;
				$id = $row['id'];
				$u_NIK = $row['u_NIK'];
				$u_f_name = $row['u_f_name'];
				$u_l_name = $row['u_l_name'];
				$u_phone = $row['u_phone'];
				$u_essai = $row['u_essai'];
				$u_status_ajuan = $row['status_ajuan'];

        		$image = $row['image'];

        		echo "

				<tr>
				<td class='text-center'>$sl</td>
				<td class='text-left'>$u_f_name   $u_l_name</td>
				<td class='text-left'>$u_NIK</td>
				<td class='text-left'>$u_phone</td>
				<td class='text-center'>$u_status_ajuan</td>
			
				<td class='text-center'>
					<span>
					<a href='#' class='btn btn-success mr-3 profile beasiswa' data-toggle='modal' data-target='#view$id' title='Prfile'><i class='fa fa-address-card-o' aria-hidden='true'></i></a>
					</span>
					
				</td>
				<td class='text-center'>
					<span>
					<a href='#' class='btn btn-warning mr-3 edituser' data-toggle='modal' data-target='#edit$id' title='Edit'><i class='fa fa-pencil-square-o fa-lg'></i></a>

					     
					    
					</span>
					
				</td>
				<td class='text-center'>
					<span>
					
						<a href='#' class='btn btn-danger deleteuser' title='Delete'>
						     <i class='fa fa-trash-o fa-lg' data-toggle='modal' data-target='#$id' style='' aria-hidden='true'></i>
						</a>
					</span>
					
				</td>
			</tr>


        		";
        	}

        	?>

			
			
		</table>
		<form method="post" action="export.php">
     <input type="submit" name="export" class="btn btn-success" value="Export" />
    </form>
	</div>


	<!---Add in modal---->

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
		<center><img src="https://beasiswaunggulan.kemdikbud.go.id/wp-content/uploads/2023/05/logo-siunggul-full.png" width="300px" height="70px" alt=""></center>
      </div>
      <div class="modal-body">
        <form method="POST" enctype="multipart/form-data">
			
			<!-- This is test for New beasiswa Activate Form  -->
			<!-- This is Address with email id  -->
<div class="form-row">
<div class="form-group col-md-6">
<label for="inputEmail4">NIK</label>
<input type="text" class="form-control" name="card_no" placeholder="Enter 14-digit NIK" minlegth="14" maxlength="14" required autocomplete="off">
</div>

<div class="form-group col-md-6">
<label for="inputPassword4">Mobile No.</label>
<input type="tel" class="form-control" name="user_phone" placeholder="Enter digit Phone" maxlength="15" required pattern="(\+62|62|0)8[1-9][0-9]{6,9}$">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="firstname">First Name</label>
<input type="text" class="form-control" name="user_first_name" placeholder="Enter First Name" required autocomplete="off">
</div>
<div class="form-group col-md-6">
<label for="lastname">Last Name</label>
<input type="text" class="form-control" name="user_last_name" placeholder="Enter Last Name" required autocomplete="off">
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
<label for="fathername">Father's Name</label>
<input type="text" class="form-control" name="user_father" placeholder="Enter First Name" required autocomplete="off">
</div>
<div class="form-group col-md-6">
<label for="mothername">Mother's Name</label>
<input type="text" class="form-control" name="user_mother" placeholder="Enter Last Name" required autocomplete="off">
</div>
</div>


<div class="form-row" style="color: skyblue;">
<div class="form-group col-md-6">
<label for="email">Email Id</label>
<input type="email" class="form-control" name="user_email" placeholder="Enter Email id" required autocomplete="off">
</div>
<div class="form-group col-md-6">
<label for="Nama NIM">NIM</label>
<input type="text" class="form-control" name="user_NIM" maxlength="20" placeholder="Enter max 20-digit Nim. " required autocomplete="off">
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputState" required>Gender</label>
<select id="inputState" name="user_gender" class="form-control">
  <option selected>Choose...</option>
  <option>Male</option>
  <option>Female</option>
</select>
</div>
<div class="form-group col-md-6">
<label for="inputPassword4">Date of Birth</label>
<input type="date" class="form-control" name="user_dob" placeholder="Date of Birth" required>
</div>
</div>


<div class="form-group">
<label for="essai">ESSAI SINGKAT</label>
    <textarea class="form-control" name="essai" rows="3"></textarea>
</div>



<div class="form-group">
<label for="inputAddress">Alamat</label>
<input type="text" class="form-control" name="village" placeholder="Jalan Batu Alam" required autocomplete="off">
</div>

<div class="form-group">
<label for="inputAddress2">Semester Saat Ini :</label>
<select class="form-control" name="semester_ini" required>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
        </select>
</div>

<div class="form-row">
<div class="form-group col-md-6">
<label for="inputUni">Universitas Tujuan</label>
<input type="text" class="form-control" name="dist" required autocomplete="off">
</div>

<div class="form-group col-md-4">
<label for="inputState">Jenis Beasiswa</label>
<select name="state" class="form-control">
  <option selected>Choose...</option>
  <option value='beasiswa DN'>Beasiswa Dalam Negeri</option>
  <option value='beasiswa LN'>Beasiswa Luar Negeri</option>				
</select>
</div>


<div class="form-group col-md-2">
<label for="inputZip">IPK</label>
<input type="text" class="form-control" name="pincode" required autocomplete="off">
</div>
</div>


<div class="form-group">
<label for="inputAddress">status_ajuan</label>
<input type="text" class="form-control" name="status_ajuan" value="belum_diverifikasi" readonly>
</div>
			


        	<div class="form-group">
        		<label> Upload Sertifikat</label>
        		<input type="file" name="image" class="form-control" >
        	</div>
        	 <input type="submit" name="submit" class="btn btn-info btn-large" value="Submit">
        	
        	
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


<!------DELETE modal---->




<!-- Modal -->
<?php

$get_data = "SELECT * FROM student_data";
$run_data = mysqli_query($con,$get_data);

while($row = mysqli_fetch_array($run_data))
{
	$id = $row['id'];
	echo "

<div id='$id' class='modal fade' role='dialog'>
  <div class='modal-dialog'>

    <!-- Modal content-->
    <div class='modal-content'>
      <div class='modal-header'>
        <button type='button' class='close' data-dismiss='modal'>&times;</button>
        <h4 class='modal-title text-center'>Are you want to sure??</h4>
      </div>
      <div class='modal-body'>
        <a href='delete.php?id=$id' class='btn btn-danger' style='margin-left:250px'>Delete</a>
      </div>
      
    </div>

  </div>
</div>


	";
	
}


?>


<!-- View modal  -->
<?php 

// <!-- profile beasiswa modal start -->
$get_data = "SELECT * FROM student_data";
$run_data = mysqli_query($con,$get_data);

while($row = mysqli_fetch_array($run_data))
{
	$id = $row['id'];
	$card = $row['u_NIK'];
	$name = $row['u_f_name'];
	$name2 = $row['u_l_name'];
	$father = $row['u_father'];
	$mother = $row['u_mother'];
	$gender = $row['u_gender'];
	$email = $row['u_email'];
	$NIM = $row['u_Nim'];
	$Bday = $row['u_birthday'];
	$essai = $row['u_essai'];
	$phone = $row['u_phone'];
	$address = $row['u_state'];
	$village = $row['u_village'];
	$semester = $row['u_semester'];
	$dist = $row['u_dist'];
	$pincode = $row['u_pincode'];
	$state = $row['u_state'];
	$time = $row['uploaded'];
	
	$image = $row['image'];
	echo "

		<div class='modal fade' id='view$id' tabindex='-1' role='dialog' aria-labelledby='userViewModalLabel' aria-hidden='true'>
		<div class='modal-dialog'>
			<div class='modal-content'>
			<div class='modal-header'>
				<h5 class='modal-title' id='exampleModalLabel'>Profile beasiswa <i class='fa fa-user-circle-o' aria-hidden='true'></i></h5>
				<button type='button' class='close' data-dismiss='modal' aria-label='Close'>
				<span aria-hidden='true'>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
			<div class='container' id='profile beasiswa'> 
				<div class='row'>
					<div class='col-sm-4 col-md-2'>
						<img src='upload_images/$image' alt='' style='width: 150px; height: 150px;' ><br>
		
						<i class='fa fa-id-card' aria-hidden='true'></i> $card<br>
						<i class='fa fa-phone' aria-hidden='true'></i> $phone  <br>
						Issue Date : $time
					</div>
					<div class='col-sm-3 col-md-6'>
						<h3 class='text-primary'>$name $name2</h3>
						<p class='text-secondary'>
						<strong>IPK :</strong> $pincode <br>
						<strong>Jenis Beasiswa :</strong>$state <br>
						<strong>Universitas Tujuan :</strong>$dist <br>
						<strong>semester :</strong> $semester<br>
						<strong>NIM :</strong> $NIM <br>
						<i class='fa fa-venus-mars' aria-hidden='true'></i> $gender
						<br />
						<i class='fa fa-envelope-o' aria-hidden='true'></i> $email
						<br />
						<div class='card' style='width: 18rem;'>
						<i class='fa fa-file-text-o' aria-hidden='true'></i> ESSAI :
								<div class='card-body'>
								<p> $essai </p>
								</div>
						</div>
						
						<i class='fa fa-home' aria-hidden='true'> Address : </i> $village, $semester, <br> , $mother - $father
						<br />
						</p>
						<!-- Split button -->
					</div>
				</div>

			</div>   
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
			</div>
			</form>
			</div>
		</div>
		</div> 


    ";
}


// <!-- profile beasiswa modal end -->


?>





<!----edit Data--->

<?php

$get_data = "SELECT * FROM student_data";
$run_data = mysqli_query($con,$get_data);

while($row = mysqli_fetch_array($run_data))
{
	$id = $row['id'];
	$card = $row['u_NIK'];
	$name = $row['u_f_name'];
	$name2 = $row['u_l_name'];
	$father = $row['u_father'];
	$mother = $row['u_mother'];
	$gender = $row['u_gender'];
	$email = $row['u_email'];
	$NIM = $row['u_Nim'];
	$Bday = $row['u_birthday'];
	$essai = $row['u_essai'];
	$phone = $row['u_phone'];
	$address = $row['u_state'];
	$village = $row['u_village'];
	$semester = $row['u_semester'];
	$dist = $row['u_dist'];
	$pincode = $row['u_pincode'];
	$state = $row['u_state'];
	$status_U = $row['status_ajuan'];
	$time = $row['uploaded'];
	$image = $row['image'];
	echo "

<div id='edit$id' class='modal fade' role='dialog'>
  <div class='modal-dialog'>

    <!-- Modal content-->
    <div class='modal-content'>
      <div class='modal-header'>
             <button type='button' class='close' data-dismiss='modal'>&times;</button>
             <h4 class='modal-title text-center'>Edit your Data</h4> 
      </div>

      <div class='modal-body'>
        <form action='edit.php?id=$id' method='post' enctype='multipart/form-data'>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>NIK</label>
		<input type='text' class='form-control' name='card_no' placeholder='Enter 14-digit NIK' maxlength='14' value='$card' required>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>Mobile No.</label>
		<input type='phone' class='form-control' name='user_phone' placeholder='Enter digit Phone' maxlength='15' value='$phone' required>
		</div>
		</div>
		
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='firstname'>First Name</label>
		<input type='text' class='form-control' name='user_first_name' placeholder='Enter First Name' value='$name'>
		</div>
		<div class='form-group col-md-6'>
		<label for='lastname'>Last Name</label>
		<input type='text' class='form-control' name='user_last_name' placeholder='Enter Last Name' value='$name2'>
		</div>
		</div>
		
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='fathername'>Father's Name</label>
		<input type='text' class='form-control' name='user_father' placeholder='Enter First Name' value='$father'>
		</div>
		<div class='form-group col-md-6'>
		<label for='mothername'>Mother's Name</label>
		<input type='text' class='form-control' name='user_mother' placeholder='Enter Last Name' value='$mother'>
		</div>
		</div>
		
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='email'>Email Id</label>
		<input type='email' class='form-control' name='user_email' placeholder='Enter Email id' value='$email'>
		</div>
		<div class='form-group col-md-6'>
		<label for='Nama NIM'>NIM</label>
		<input type='text' class='form-control' name='user_NIM' maxlength='20' placeholder='Enter max 20-digit NIM ' value='$NIM'>
		</div>
		</div>
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputState'>Gender</label>
		<select id='inputState' name='user_gender' class='form-control' value='$gender'>
		  <option selected>$gender</option>
		  <option>Male</option>
		  <option>Female</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>Date of Birth</label>
		<input type='date' class='form-control' name='user_dob' placeholder='Date of Birth' value='$Bday'>
		</div>
		</div>
		
		
		<div class='form-group'>
		<label for='essai'>ESSAI SINGKAT</label>
			<textarea class='form-control' name='essai' rows='3'>$essai</textarea>
		</div>
		
		
		
		<div class='form-group'>
		<label for='inputAddress'>Village</label>
		<input type='text' class='form-control' name='village' placeholder='Jalan Batu Alam' value='$village'>
		</div>
		<div class='form-group'>
		<label for='inputAddress2'>Semester saat ini</label>
		<input type='text' class='form-control' name='semester_ini' placeholder='Semester saat ini' value='$semester'>
		</div>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputUni'>Universitas Tujuan</label>
		<input type='text' class='form-control' name='dist' value='$dist'>
		</div>
		<div class='form-group col-md-4'>
		<label for='inputState'>Jenis Beasiswa</label>
		<select name='state' class='form-control'>
		  <option>$state</option>
		  <option value='Beasiswa DN'>Beasiswa Dalam Negeri</option>
		  <option value='Beasiswa LN'>Beasiswa Luar Negeri</option>
		</select>
		</div>
		<div class='form-group col-md-2'>
		<label for='inputZip'>IPK</label>
		<input type='text' class='form-control' name='pincode' value='$pincode'>
		</div>
		</div>

		
		<div class='form-group'>
		<label for='inputAddress'>blum dikonfirmasi</label>
		<input type='text' class='form-control' name='status_ajuan' value='belum_diverifikasi' readonly>
		</div>
        	

        	<div class='form-group'>
        		<label>Image</label>
        		<input type='file' name='image' class='form-control'>
        		<img src = 'upload_images/$image' style='width:50px; height:50px'>
        	</div>

        	
        	
			 <div class='modal-footer'>
			 <input type='submit' name='submit' class='btn btn-info btn-large' value='Submit'>
			 <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
		 </div>


        </form>
      </div>

    </div>

  </div>
</div>


	";
}


?>

<script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  <script>
    $(document).ready(function () {
      $('#myTable').DataTable();

    });
  </script>

</body>
</html>
