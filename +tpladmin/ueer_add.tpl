<form name="form1" method="post" action="{$href}" enctype="multipart/form-data" style="text-align:right">
<input type="hidden" name="action" value="update">
<div id="title">
	{$title}
</div>


<form id="form1" name='form1' action="user_add.php" method="post">
    <input type='hidden' name='id' id='id' value="" />
    <table>
        <tr>
            <td><input type='text' name='user_name' id='user_name' placeholder="نام" /></td>
            <td><input type='text' name='user_family' id='user_family' placeholder="نام خانوادگی" /></td>
            <td><input type='text' name='username' id='username' placeholder="یوزرنیم" /></td>
            <td><input type='text' name='password' id='password' placeholder="پسورد" /></td>
            <td><input type='text' name='mobile' id='mobile' placeholder="همراه" /></td>
            <td><input type='text' name='email' id='email' placeholder="ایمیل" /></td>
            <td><input class='btn' type='submit' name='btn' id='btn' value="Add Records" /></td>
        </tr>
    </table>
</form>
<table class='table table-bordered'>
   <thead>

      <tr>
            <th>#</th>

            <th>Prodcut</th>

            <th>Price</th>

             <th>Category</th>
    
            <th>Action</th>

      </tr>
  
   </thead>

    <?php 

    $i =1; 

    foreach ($cursor as $document) {   ?>

      <tr>

      <td><?php echo $i; ?></td>

      <td><?php echo $document->product_name;  ?></td>

      <td><?php if (isset( $document->price)) echo $document->price;  ?></td>        
    
     <td><?php echo $document->category;  ?></td>
      
     <td><a class='editlink' data-id=<?php echo $document->_id; ?> 
             href='javascript:void(0)'>Edit</a> |
        <a onClick ='return confirm("Do you want to remove this
                     record?");' 
        href='record_delete.php?id=<?php echo $document->_id;  ?>'>Delete</td>

      </tr>

     <?php $i++;  

  } 

  ?>

</table>

</form>
