<?php 
// include database and object files
include 'database.php';
include 'company.php';
include 'view_details.php' ;
?>

<html>
<head></head>

<body>
<?php 
if (!isset($_POST["reqt"])) { $reqt=""; } else { $reqt= $_POST["reqt"];}
?>
<form name="test" action="index.php" method="post" >
<input type=text name=reqt value"<?=$reqt;?>"  size=100>
<input type=submit name=submit value=submit>
</form>
<?php 
// if the form was submitted
if($_POST){
  $reqt_lower= strtolower(trim($reqt_lower)); // removing spaces and converting to lower case for match 

     $reqt= new Company($reqt_lower); 
     
     $company= new ViewDetails();  
      
     
     $company->showDetails();   // printing company details  with requirements 


} 
?>

</body>
</html>