<!DOCTYPE html>
<html>
<head>
 <title></title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  

<?php
require('vendor/autoload.php');
$con=mysqli_connect('localhost','root','','marks_management');          // result---Database name
$res=mysqli_query($con,"select * from marks");            //resulttable----Database table name
if(mysqli_num_rows($res)>0){
	$html='<style>table, th, td {
        border:1px solid black;
        text-align: center;

      }</style><table style="width:100%">';
 
		$html.='
        <tr class="bg-dark text-white text-center">
        
        <th> ID </th>
        <th> SUBJECT NAME </th>
        <th> MARKS</th>
        
       
        </tr >
        ';
		while($row=mysqli_fetch_assoc($res)){
			$html.='<tr><td>'.$row['sno'].'</td><td>'.$row['subname'].'</td><td>'.$row['mark'].'</td></tr>';

 
		}
	$html.='</table>';
}else{
	$html="Data not found";
}
$mpdf=new \Mpdf\Mpdf();
$mpdf->WriteHTML($html);
$file='media/'.time().'.pdf';
$mpdf->output($file,'D');              //D means direct download    to download D
        
//D ---Download as pdf
//I---view and download
//F--symbol
//S
?>
</body>
</html>