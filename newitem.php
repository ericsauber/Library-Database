<!DOCTYPE HTML>
<html>
    <link rel="stylesheet" type="text/cs" href="css/stylesheet.css">

    <?php
      require './functionlib.php';
     ?>
  

    <head>
       
        <title>New Item</title>
    </head>
    <h1 style="text-align:center">Add Item</h1>

    <body>
        <form action="http://localhost:8888/Library-Database/update-item.php" method="post">
        <div class="main">

                <div class="text">Item Name: </div>
                <div><input type="text" name="Item_Name" size="30"/></div><br>

                <div class="text">Item ID: </div>
                <div><input type="text" name="Item_ID" size="30"/></div><br>

                <div class="text">Item Name: </div>
                <div><input type="text" name="Item_Name" size="100"/></div><br>
            
                <div class="text">Type: </div>
                <div><?php makelistelement('item_types','Type_No','Type',''); ?></div><br>


                <div class="text">Subtype: </div>
                <div><?php makelistelement('item_subtypes','Subtype_No','Subtype',''); ?></div><br>

                 <div class="text">Media </div>
                <div><?php makelistelement('item_media','Media_No','Media_Type',''); ?></div><br>

                 <div class="text">Format: </div>
                <div><?php makelistelement('item_formats','Format_No','Format_Type',''); ?></div><br>

                 <div class="text">Subject: </div>
                <div><?php makelistelement('item_subject','Subject_No','Subject',''); ?></div><br>

                <div class="text">Price: </div>
                <div><input type="text" name="Item_Price" size="30"/></div><br>
        
        
            

            <div>
                <input type="submit" value="Submit"/><br><br>    
            </div>


            <br><a style="color:black" href="http://localhost:8888/Library-Database/">Home</a><br>

        </div>
        

       <form>
    </body>
</html>