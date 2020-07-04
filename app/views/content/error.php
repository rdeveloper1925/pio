<div class="row">
<?php if(!isset($reason)): ?>
<h1><i class="fa fa-heart-broken"></i>Please check the CIF and retry</h1>
<?php endif; ?>
<?php if(isset($reason)): ?>
    <h1><i class="fa fa-heart-broken"></i><?=$reason?></h1>
<?php endif; ?>
</div>