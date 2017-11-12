<?php namespace ProcessWire; ?>

<div class="contact-form">

    <form class='action-submit' action="./" method="post" enctype='multipart/form-data'>

    <input type="hidden" id="_post_token"  name="<?=$tokenName?>" value="<?=$tokenValue?>">
    
    <input name="firstname" type="text" id="firstname" class="hide-robot" autocomplete="off">

        <div class='add-name'>
            <label class='label' for="name"><?=$n?> *</label>
            <input class='input' type="text" id="name" name="name" placeholder="<?= __('Your Name..');?>" required>
        </div>

        <div class='add-email'>
            <label class='label' for="email"><?=$e?> *</label>
            <input class='input' type="email" id="email" name="email" placeholder="<?= __('Your E-Mail..');?>" required>
        </div>

        <div class='add-phone'>
            <label class='label' for="phone"><?=$p_n?></label>
            <input class='input' type="text" id="phone" name="phone" placeholder="<?= __('Your Phone Number ...');?>">
        </div>

        <div class='add-subject'>
            <label class='label' for="subject"><?=$sub?> *</label>
            <textarea class='textarea' id="subject" name="subject" placeholder="<?= __('Write something..');?>" style="height:200px" required></textarea>
        </div>

<?php if($img_on == true || $pdf_on == true) : ?>
<div class="add-file">
<?php if($img_on == true) : ?>
    <div class='f-image'>
        <label class="fileContainer">
        <?= __('MAX FILESIZE 1MiB'); ?>
            <span class='mess'>
            <i id='img' class="fa fa-file-image-o" aria-hidden="true"></i> 
                <?=__('IMG'); ?>
            </span>
            <?= __('MAXIMUM 3 FILES'); ?>  
            <input id='imagesToUpload' class='btn-file' type="file" name='images[]' multiple="multiple" accept=".png, .jpg, .jpeg, .gif">
        </label>
    </div>  
<?php endif; ?>      
                
<?php if($img_on == true) : ?>
    <div class='f-pdf'>
            <label class="fileContainer">
            <?= __('MAX FILESIZE 1MiB'); ?>
            <span class='mess'>
                <i id='pdf' class="fa fa-file-pdf-o" aria-hidden="true"> </i> 
                <?=__('PDF'); ?>
            </span>
            <?= __('MAXIMUM 3 FILES'); ?>                
                <input id='filesToUpload' class='inputfile' type="file" name='file_1[]' accept=".pdf" multiple>
            </label>
    </div>
<?php endif; 
$file = __('FILE');
?>
    <script>
    window.addEventListener('load', function () {
     $(".add-file").change(function(){
        $('#img').text(" " + document.getElementById('imagesToUpload').files.length + " <?=$file?> " );
        $('#pdf').text(" " + document.getElementById('filesToUpload').files.length + " <?=$file?> " );
      });

    });
    </script>
</div>
<?php endif; ?>

            <br>

           <input class='button' type="submit" name='submit' value="<?=__('Submit');?>">

    </form>

</div>
