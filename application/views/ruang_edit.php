<?php foreach($rs_ruang->result() as $ruang) {} ?>
<div class="content">
   <div class="header">
      <h1 class="page-title"><?php echo $page_title;?></h1>
   </div>
   <ul class="breadcrumb">
      <li><a href="<?php echo base_url();?>">Beranda</a> <span class="divider">/</span></li>
      <li><a href="<?php echo base_url();?>web/ruang">Modul Ruang</a> <span class="divider">/</span></li>
      <li class="active">Ubah Data</li>
   </ul>
   
   <div class="container-fluid">
      <div class="row-fluid">
        <?php if(isset($msg)) { ?>                        
              <div class="alert alert-error">
                <button type="button" class="close" data-dismiss="alert">�</button>                
                <?php echo $msg;?>
              </div>  
        <?php } ?>    
                  


        <form id="tab" method="POST" >
            <label>Nama</label>
            <input id="nama" type="text" value="<?php echo $ruang->nama;?>" name="nama" class="input-xlarge" />
            
            <label>Kapasitas</label>
            <input id="kapasitas" type="text" value="<?php echo $ruang->kapasitas;?>" name="kapasitas" class="input-xsmall" />
            
            <label>Jenis Ruangan</label>
            <select name="jenis" class="input-xlarge">            
              <option value="TEORI" <?php echo $ruang->jenis === 'TEORI' ? 'selected':'';?> /> TEORI
              <option value="LABORATORIUM" <?php echo $ruang->jenis === 'LABORATORIUM' ? 'selected':'';?> /> LABORATORIUM   
              <option value="PROYEK" <?php echo $ruang->jenis === 'PROYEK' ? 'selected':'';?> /> TA / PROYEK
              <option value="BAHASA" <?php echo $ruang->jenis === 'BAHASA' ? 'selected':'';?> /> BAHASA

            </select>
			
            <div class="form-actions">
              <button type="submit" class="btn btn-primary">Save</button>
              <a href="<?php echo base_url() .'web/ruang'; ?>"><button type="button" class="btn">Cancel</button></a>
            </div>
        </form>

            <footer>
            <hr />
            <p><a>Teknik Informatika POLINDRA - </a><b>Versi 1.0</b></p>
         </footer>

      </div>
   </div>
</div>      