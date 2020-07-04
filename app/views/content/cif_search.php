<div class="row">
    <div class='container col-md-11 col-11'>
      <form method="post" action="<?=base_url('fcubs/cif_search')?>">
      <?php
        $csrf = array(
        'name' => $this->security->get_csrf_token_name(),
        'hash' => $this->security->get_csrf_hash() 
);?>

<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
        <div class="form-group">
          <input type="number" class="form-control form-control-lg" value="<?=$cif?>" name="cif" required placeholder="CIF" />
        </div>
        <div class="form-group pb-2" style="padding-left:85%;padding-right:0px">
          <button type="submit" class="btn btn-success btn-lg">Search  <span><i class="fa fa-search"></i></span></button>
        </div>
      </form>
      <?=validation_errors('<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">Close</span>
        </button><i class="fa fa-heart-broken" style="color:red;padding-right:13px"></i><span style="font-size:17px"><strong>Error! </strong>','</span>
        </div>')?>
      <!--
      <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">Close</span>
        </button><i class="fa fa-heart-broken" style="color:red;padding-right:13px"></i><span style="font-size:17px"><strong>Error! </strong> Account not found.</span>
      </div>
      <div class="alert alert-primary alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">Close</span>
        </button><i class="fa fa-info-circle" style="color:white;padding-right:13px"></i><span style="font-size:17px"><strong>Information! </strong> Search CIF to display Information</span>
      </div>
    </div>-->
    <div class="container col-md-12 col-12">
        <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title"><strong>Search Results</strong></h3>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-7">
                    <span style="font-size:20px;color:#320113">Name: </span><h3 style="display:inline;color:#013208"><?php if(isset($name)){ echo $name;}?></h3>
                </div>
                <div class="col-3">
                    <a href="<?=base_url('pages/name_search')?>" class="btn btn-warning btn-md"><i class="fa fa-fast-backward" style="padding-right:13px"></i>Back to Name</a>
                </div>
                <div class="col-2">
                    <a href="<?=base_url('fcubs/acc_details/'.$cif)?>" class="btn btn-success btn-md"><i class="fa fa-fast-forward"style="padding-right:13px"></i>More Info</a>
                </div>
              </div>
            </div>
        </div>
    </div>
    <div class="container col-md-11 col-11 pt-5">
        <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title"><strong>Mandate</strong></h3>
            </div>
            <div class="card-body">
              <?php if(isset($mandate)): ?>
              <center><img src="data:image/jpeg;base64,<?=$mandate?>" style="height:850px;width:90%;margin:auto;"></center>
              <?php else: ?>
              <center><img src="<?=base_url('assets/img/logo2.jpg')?>" style="height:850px;width:90%;margin:auto;"></center>
              <?php endif;?>
            </div>
        </div>
    </div>
</div>
