<div class="container-fluid">
<div class='row'>
  <div class="col-md-3">
    <div class="col-md-12">
      <div class="card card-primary card-outline">
        <div class="card-body box-profile">
          <div class="text-center">
            <img class="profile-user-img img-fluid img-circle"
              src="<?php echo base_url(); ?>assets/img/male-user.png">
          </div>
          <h3 class="profile-username text-center"><?=$this->session->userdata('fName')?> <?=$this->session->userdata('lName')?></h3>
          <p class="text-muted text-center">
            <?php if($this->session->userdata('level')==1): ?>
              OIP User
            <?php elseif($this->session->userdata('level')==2): ?>
              Admin User
            <?php elseif($this->session->userdata('level')==3): ?>
              Super Admin User
            <?php endif;?>
          </p>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-9">
    <div class="col-md-12">
      <div class="card card-primary">
        <div class="card-header">
          <h3 class="card-title">My Information</h3>
        </div>
        <div class="card-body">
          <div class="row">
                        <div class="form-group col-4">
                          <label for="">Username:</label>
                          <input type="text" class="form-control" disabled value="<?=$this->session->userdata('username')?>">
                        </div>
                        <div class="form-group col-4">
                          <label for="">First Name:</label>
                          <input type="text" class="form-control" disabled value="<?=$this->session->userdata('fName')?>">
                        </div>
                        <div class="form-group col-4">
                          <label for="">Surname:</label>
                          <input type="text" class="form-control" disabled value="<?=$this->session->userdata('lName')?>">
                        </div>
                    </div>
              </div>
            </div>
  </div>
  <div class='col-md-12'>
    <div class='card card-primary'>
      <div class='card-header'>
        <h3 class='card-title'>Password Change</h3>
      </div>
      <div class='card-body'>
        <?=validation_errors('<div class="alert alert-danger alert-dismissible fade show col-10" role="alert">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                      </button>
                      <strong>Error!</strong> ','</div>')?>
                    <?php if($this->session->flashdata('success')): ?>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                      </button>
                      <strong><i class="fa fa-heart"></i> Success!</strong> <?= $this->session->flashdata('success')?>
                    </div>
                    <?php endif;?>
                    <?php if($this->session->flashdata('fail')): ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                      </button>
                      <strong><i class="fa fa-heart-broken"></i> Error!</strong> <?= $this->session->flashdata('fail')?>
                    </div>
                    <?php endif;?>
                    <form class="form-horizontal" method='post' action ="<?=base_url('auth/password_change')?>">
                      <div class="form-group">
                        <label for="old" class="col-sm-6 control-label">Old Password:</label>
                        <div class="col-sm-10">
                          <input type="password" name='old' class="form-control" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="new" class="col-sm-6 control-label">New Password:</label>
                        <div class="col-sm-10">
                          <input type="password" class="form-control" required name="new">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="new2" class="col-sm-6 control-label">Re-type New Password:</label>
                        <div class="col-sm-10">
                          <input type="password" class="form-control" name="new2" required>
                        </div>
                      </div>
                      <?php
        $csrf = array(
        'name' => $this->security->get_csrf_token_name(),
        'hash' => $this->security->get_csrf_hash()
);?>

<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-success btn-md"><i class="fa fa-save"></i>  <strong>Save Password</strong></button>
                        </div>
                      </div>
                    </form>
      </div>
    </div>
  </div>
    </div>
  </div>     
</div>