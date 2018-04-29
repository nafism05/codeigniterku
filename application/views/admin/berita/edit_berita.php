<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<!-- Horizontal Form -->
<div class="box box-default">
    <div class="box-header with-border">
        <h3 class="box-title">Form Edit Berita</h3>
    </div>
    <!-- /.box-header -->
    
    <!-- form start -->
    <?=form_open_multipart($edit_berita.$berita_result->id);?>
      <div class="row">
        <!-- <div class="col-sm-10 col-sm-offset-1"> -->
        <div class="col-sm-12">
          <div class="box-body">
            <!-- judul -->
            <div class="form-group <?php echo (form_error('judul')!=null) ? 'has-error' : ''; ?>">
              <label for="judul">Judul Berita<font color="red">*</font></label>
              <input type="text" class="form-control" id="judul" name="judul" placeholder="Judulnya bos" value="<?=set_value('judul', $berita_result->judul); ?>">
              <span id="helpBlock2" class="help-block"><?php echo form_error('judul'); ?></span>
            </div>
            <!-- isi konten -->
            <div class="form-group <?php echo (form_error('isi')!=null) ? 'has-error' : ''; ?>">
              <label for="isi">Isi Berita<font color="red">*</font></label>
              <textarea class="tinymce" id="tinymce" name="isi"><?=set_value('isi', $berita_result->isi); ?></textarea>
              <span id="helpBlock2" class="help-block"><?php echo form_error('isi'); ?></span>
            </div>
            <!-- thumbnail -->
            <div class="form-group">
              <label for="thumbnail">Thumbnail</label>
              <input type="file" name="thumbnail" size="20" />
              <span id="helpBlock2" class="help-block"><font color="green">Kosongkan jika tidak ingin diubah.</font></span>
              <span id="helpBlock2" class="help-block"><?php echo form_error('thumbnail'); ?></span>
            </div>
            <!-- Date -->
            <div class="form-group <?php echo (form_error('published_at')!=null) ? 'has-error' : ''; ?>">
              <label>Tgl Publish:<font color="red">*</font></label>
              <div class="input-group date">
                <div class="input-group-addon">
                  <i class="fa fa-calendar"></i>
                </div>
                <input type="text" class="form-control pull-right" id="datepicker" name="published_at" data-date-format="yyyy-mm-dd" value="<?=set_value('published_at', $berita_result->published_at); ?>">
              </div>
              <!-- /.input group -->
            </div>
            <!-- /.form group -->

            <div class="form-group <?php echo (form_error('kategori')!=null) ? 'has-error' : ''; ?>">
              <label>Kategori<font color="red">*</font></label>
              <select class="form-control select2" name="kategori[]" multiple="multiple" data-placeholder="Pilih satu/beberapa Kategori" style="width: 100%;"><?=set_value('kategori'); ?>
                <?php foreach ($cat_result as $cat){ ?>
                  <option value="<?=$cat->id;?>" <?php echo (in_array($cat->id, $post_kategori)) ? 'selected' : '';?>><?=$cat->name;?></option>
                <?php } ?>
              </select>
              <span id="helpBlock2" class="help-block"><?php echo form_error('kategori'); ?></span>
            </div>
            <!-- /.form-group -->
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.col-sm-4 col-sm-offset-1 -->
      </div>
      <!-- /.row -->


      <div class="box-footer">
          <button type="submit" class="btn btn-primary">Submit</button>
      </div>
      <!-- /.box-footer -->
    </form>
</div>
<!-- /.box -->