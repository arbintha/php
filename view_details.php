<?php
class ViewDetails extends Company{  //extended class  
 
    public function showDetails(){  // show company details as per the query from class company 
    $sdata= $this->getCompanyDetails(); 
    foreach($sdata as $data) {
    echo  "Company: ".$data['name']." requires ".$data['reqt'];   // printing name and requirements of the company 
    
       }
    
    }
 
}
?>