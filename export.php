<?php  
//export.php  
include 'config.php';
$output = '';
if(isset($_POST["export"]))
{
 $query = "SELECT * FROM student_data order by 1 desc";
 $result = mysqli_query($con, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
                    <tr>  
                         <th>S.L</th>  
                         <th>NIK</th>  
                         <th>Name</th>  
                         <th>Father Name:</th>  
                         <th>Mother name:</th>  
                         <th>NIM</th>
                         <th>Gender</th>  
                         <th>Birthday</th>
                         <th>Email Id:</th>  
                         <th>Mobile N.</th>
                         <th>essai</th>  
                         <th>Address</th>
                         <th>status_ajuan</th>  
                         <th>Issue Date:</th>

                    </tr>
  ';
  $i = 0;
  while($row = mysqli_fetch_array($result))
  {
    $sl = ++$i;
   $output .= '
    <tr>  
                         <td > '.$sl.' </td>
                         <td>'.$row["u_NIK"].'</td>  
                         <td>'.$row["u_f_name"]  .$row["u_l_name"].'</td>  
                         <td>'.$row["u_father"].'</td>  
                         <td>'.$row["u_mother"].'</td>  
                         <td>'.$row["u_Nim"].'</td>  
                         <td>'.$row["u_gender"].'</td> 
                         <td>'.$row["u_birthday"].'</td>  
                         <td>'.$row["u_email"].'</td>  
                         <td>'.$row["u_phone"].'</td> 
                         <td>'.$row["u_essai"].'</td>  
                         <td>'.$row["u_village"] .$row["u_semester"] .$row["u_dist"] .$row["u_state"] .$row["u_pincode"].'</td>  
                        <td>'.$row["status_ajuan"].'</td>  
                        <td>'.$row["uploaded"].'</td>
                    </tr>
   ';
  }
  $output .= '</table>';
  header('Content-Type: application/xls');
  header('Content-Disposition: attachment; filename=beasiswa.xls');
  echo $output;
 }
}
?>