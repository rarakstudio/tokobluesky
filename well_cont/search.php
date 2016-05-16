<!-- <form method='POST' action='prosesCari'>
	<div class="control-group">

		
		<?php 
			$sql=mysql_query("SELECT * FROM subkategori ORDER BY nama");
			echo "<select name='katprod'  class='categories-filter animate-dropdown'>";
			echo "<option class='dropdown' value='0' selected> Pilih Kategori Produk </option>";
			while($s=mysql_fetch_array($sql))
			{
				echo "<option class='dropdown' value='$s[id_subkategori]'>$s[nama]</option>";
			}
			echo "<option class='dropdown' value='0'> Semua Kategori </option>";
			echo "</select>";
		?>
		<input name='search' class='search-field' type='text' placeholder='Kata kunci...' />

		<input type='submit' id="find" class='search-button' value='' title='Cari' />
		

	</div>
</form>

 -->

<form method='POST' action='prosesCari'>
	<div class="input-group" style="margin-left: 71px;margin-right: -51%;margin-top: 3%;">

						<?php
						$sql="select * from subkategori order by nama";
						$result=mysql_query($sql);
						//echo $sql ;exit;
						?>
						<span class="input-group-addon" id="basic-addon2" style="background-color: #FFF;">
						<select name="katprod" style="border: #fff;">
							<option value="">Pilih Kategori Produk</option>
						<?php
					
						$result=mysql_query($sql);
						while($data=mysql_fetch_array($result)){
						?>
							<option value="<?php echo $data['id_subkategori'] ?>"><?php echo $data['nama']; ?></option>
						<?php
						}
						?>
						</select></span>
						<input type="text" class="form-control" placeholder="cari produk" name="search" width="100" required>
					


						<span class="input-group-btn">
						<button class="btn btn-primary" type="submit" value="Submit"><i class="fa fa-search fa-1x" aria-hidden="true"></i></button>
						</span>
    </div>
    </form>