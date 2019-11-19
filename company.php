<?php
class Company extends Database{  // company details 
    
    public function __construct($reqt){
    $this->reqt=$reqt;  // constructor for passing the parameters of requirements from the form
    }
    
    protected function getCompanyDetails(){
    $sql="select id, 
    (select c.name from company c where c.id=cr.cid) as name, requirements from company_reqt cr where lower(c.requirements) like '%'".$this->reqt."%'";    //query to get the company details as per entered text
    $result= $this->connect()->query($sql); 
    $numrows= $result->num_rows;     // num of rows
    if($numrows>0){         // if records found 
        while($row=$result->fetch_assoc()){
        $data[]= $row;  //keep records into array 
          }
     return $data;  
       }
    }
   function __destruct(){
   $this->reqt= null; 
   }
    
}
?>