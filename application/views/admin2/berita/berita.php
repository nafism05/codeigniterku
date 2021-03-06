<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box">
	<div class="box-header">
		<h3 class="box-title">Data Berita</h3>
		
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<?php if(isset($_SESSION['notifikasi'])){ ?>
		<div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <i class="icon fa fa-check"></i> <?=$_SESSION['notifikasi']; ?>
        </div>
        <?php  } ?>
        <?php if(isset($_SESSION['register_error'])){ ?>
		<div class="alert alert-danger alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <i class="icon fa fa-check"></i> <?=$_SESSION['register_error']; ?>
        </div>
        <?php  } ?>
		<table id="example1" class="table table-bordered table-striped">
			<thead>
			<tr>
				<th>Judul</th>
				<th>Isi</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
	        <?php foreach ($berita_result as $news){ ?>
    			<tr>
    				<td><?php echo $news->judul; ?></td>
    				<td><?php echo substr($news->isi,0,50); ?>...</td>
    				<td align="center">
    					<a href="<?=base_url($edit_berita).$news->id;?>"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;<a onClick="javascript: return confirm('Kamu Yakin?');" href="<?=base_url($delete_berita).$news->id;?>"><i class="fa fa-trash"></i></a>
    				</td>
    			</tr>

	        <?php } ?>
			               
		</tbody>
	</table>
</div>
<!-- /.box-body -->
    <div class="box-footer">
        <a href="<?php echo base_url($tulis_berita);?>"><button type="button" class="btn btn-default btn-sm">Tulis Berita</button></a>
    </div>
</div>
<!-- /.box -->