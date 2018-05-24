
<?php
 include('config.php');
   $productId = $_POST['id'];
// $id = "1";
$result_array = array();

				
		  //include()
		  $resultSupplier=mysqli_query($conn,"select * from `supplier` where `supplier_status`='Active' ORDER BY id DESC ");
		  //$resultCategory=mysqli_query($conn,"select * from `brand` where `status`='Active' ORDER BY id DESC ");
		  //$resultCategory=mysqli_query($conn,"select * from `category` where `status`='Active' ORDER BY id DESC ");
		  
			if ($resultSupplier->num_rows > 0) {
				
				echo '<form method="POST" action="product.php"><div class="form-group"><label for="category:"><b>Select Supplier</b></label><select name="editProductSupplier" class="form-control" required>';
				while($row = $resultSupplier->fetch_assoc()) {
					
				  $supplierName =$row['supplier_name'];
				 //echo $categoryName =$row['category_name'];
				 //echo $categoryName =$row['brand_name'];
				//echo $categoryName$row['category_name'];
				    
					
					 echo '<option value="'.$supplierName.'">'.$supplierName.'</option>';
				}
				// select from brand where category is the one select above
				
				//echo $data;
				echo '</select></div>';
				$resultCategory=mysqli_query($conn,"select * from `category` where `status`='Active' ORDER BY id DESC ");
				if ($resultCategory->num_rows > 0) {
					echo '<div class="form-group"><label for="category:"><b>Select Category</b></label>
					
				<select name="editProductCategory" class="form-control" onchange="editSelectBrandInCategory(this.value)" ><option>--Select Category--</option>';
					while($row = $resultCategory->fetch_assoc()) {
						 $categoryName =$row['category_name'];
						echo '<option value="'.$categoryName.'" >'.$categoryName.'</option>';
				}
				 
				
				echo '</select>
				</div>';
				 $resultProduct=mysqli_query($conn,"select * from `product` where `id`='".$productId."' ORDER BY id DESC ");
				 if ($resultProduct->num_rows > 0) {
					 while($row = $resultProduct->fetch_assoc()) {
						  $editProductId =$row['id'];
						  $editProductName =$row['product_name'];
						  $editProductDescription =$row['product_description'];
						  $editProductQuantity =$row['available_quantity'];
						  $editProductCategory =$row['category'];
						  $editProductUnit =$row['product_unit'];
						  //$editProductTax =$row['tax'];
						  $editProductDateEntered =$row['date_entered'];
						  $editProductBuyingPrice =$row['buying_price'];
						  $editProductSellingPrice =$row['selling_price'];
					 }
				 
				?>
				
				
				 
				 <div id="editselectBrandoption"><div class="form-group"><label for="category:"><b>Select Brand </b></label>
				<select name="brand_status" class="form-control"><div id="editselectBrandoption"> </div></select>
				</div></div>
				<div class="form-group"><label for="status:"><b>Product Status </b></label><select name="editProductStatus" class="form-control" ><option value="Active">Active</option><option value="Inactive">Inactive</option></select></div>
				<div class="form-group">
            
              <input name="editProductId" value="<?php echo $editProductId ;?>" type="hidden">
                <label for="brand name"><b>Enter Product Name:</b></label>
                <input class="form-control" id="productName" value="<?php echo $editProductName ;?>" name="editProductName" type="text" aria-describedby="nameHelp" placeholder="Enter product name">
                       
          </div> 
		  <div class="form-group">
            
              
                <label for="product description"><b>Enter Product Description:</b></label>
                <textarea class="form-control" id="productDescription"  name="editProductDescription"  type="text" aria-describedby="nameHelp" placeholder="Enter product description "> <?php echo $editProductDescription ;?></textarea>
                       
          </div>
		  
		 
		
          <div class="form-group">
			  <div class="row">
			   <div class="col-md-8">
				   <label for="brand name"><b>Enter Product Quantity:</b></label>
				   <input class="form-control" name="editProductQuantity" type="number" min="1" value="<?php echo $editProductQuantity ;?>" required>
			   </div>
			   <div class="col-md-4">
				   <label for="brand name"><b>Select Unit:</b></label>
					<select class="form-control" name="editProductUnit" required>
					<option value=" ">-- Select Unit --</option>
					<option value="Kg">Kg</option>
					<option value="pcs">pcs</option>
					<option value="curton">Curton</option>
					</select>
			   </div>
			  </div>
		  
		  </div>
		 <div class="form-group">
            
              
                <label for="base price"><b>Enter Product Buying Price:</b></label>
                <input class="form-control" id="editProductBuyingPrice" name="editProductBuyingPrice" required  value="<?php echo $editProductBuyingPrice ;?>"type="number" min="1" aria-describedby="nameHelp" placeholder="Enter Buying price">
                   
          </div>
		  <div class="form-group">
            
              
                <label for="base price"><b>Enter Product Selling Price:</b></label>
                <input class="form-control" id="editProductSellingPrice" required name="editProductSellingPrice"  value="<?php echo $editProductSellingPrice ;?>" type="number" min="1" aria-describedby="nameHelp" placeholder="Enter product selling Price">
                   
          </div> 
		
 
		  </div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <button class="btn btn-primary" name="editProductButton" type="submit" >Edit Product</button>
          </div></form>
				<?php
				
			}}
				;
			}else{
				echo "no such name";
			}
		  
		  ?>