<div class='row pl-3'>
<div class="col-8">
<?php if($this->session->flashdata('ROLE_EXISTS')): ?>
  <div class="alert alert-danger alert-dismissible fade show" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      <span class="sr-only">Close</span>
    </button>
    <strong><i class="fa fa-heart-broken pr-2"></i>Ooops!</strong> <?=$this->session->flashdata('ROLE_EXISTS')?>
  </div>
<?php endif; ?>
<?php if($this->session->flashdata('ROLE_GRANTED')): ?>
  <div class="alert alert-success alert-dismissible fade show" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      <span class="sr-only">Close</span>
    </button>
    <strong><i class="fa fa-heart pr-2"></i>YEYY!</strong> <?=$this->session->flashdata('ROLE_GRANTED')?>
  </div>
<?php endif; ?>
<?php if($this->session->flashdata('ROLE_REVOKED')): ?>
  <div class="alert alert-success alert-dismissible fade show" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      <span class="sr-only">Close</span>
    </button>
    <strong><i class="fa fa-heart pr-2"></i>YEYY!</strong> <?=$this->session->flashdata('ROLE_REVOKED')?>
  </div>
<?php endif; ?>
</div>
<div class='col-md-12 pb-3'>
  <a href="<?=base_url('admin/users')?>" class='btn btn-success btn-md'><i class='fa fa-backward'></i> Back</a>
</div>
<div class='row col-3'>
<div class="col-md-12">
      <div class="card card-primary card-outline">
        <div class="card-body box-profile">
          <div class="text-center">
            <img class="profile-user-img img-fluid img-circle"
              src="<?php echo base_url(); ?>assets/img/male-user.png">
          </div>
          <h3 class="profile-username text-center"><?=$user->username?></h3>
          <p class="text-muted text-center">
            <?php if($user->level==1): ?>
              Ordinary User
            <?php elseif($user->level==2): ?>
              Admin User
            <?php elseif($user->level==3): ?>
              Super Admin User
            <?php endif;?>
          </p>
        </div>
      </div>
</div>

<div class="col-md-12">
    <div class="card card-primary">
      <div class="card-header">
      <h5 class='card-title'><i class='fa fa-cogs' style="padding-right:13px"></i>Account Controls</h5>
      </div>
        <div class="card-body box-profile" style='margin-right:3px'>
            <form action='<?=base_url("admin/update_account/".$user->username)?>' method="post">
            <?php
        $csrf = array(
        'name' => $this->security->get_csrf_token_name(),
        'hash' => $this->security->get_csrf_hash()
);?>

<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
            <div clas='form-group' style='padding-bottom:13px'>
                <div class="custom-control custom-switch">
                    <input type="checkbox" value='1' name='locked' <?php if($user->locked){echo 'checked';}else{echo '';}?> class="custom-control-input" id="customSwitche1">
                    <label class="custom-control-label" for="customSwitche1">Account Lock status: <?php if($user->locked){echo '<i class="fa fa-lock" style="color:red"></i>';}else{echo '<i class="fa fa-lock-open" style="color:green"></i>';}?></label>
                </div>
            </div>
            <div clas='form-group' style='padding-bottom:13px'>
                <div class="custom-control custom-switch">
                    <input type="checkbox" value=1 name='mustChangePwd' <?php if($user->mustChangePwd){echo 'checked';}else{echo '';}?> class="custom-control-input" id="customSwitche2">
                    <label class="custom-control-label" for="customSwitche2">Reset Password</label>
                </div>
            </div>
            <div clas='form-group' style='padding-bottom:13px'>
                <div class="custom-control custom-switch">
                    <input type="checkbox" value='1' name='failedAttempts' checked class="custom-control-input" id="customSwitche3">
                    <label class="custom-control-label" for="customSwitche3">Reset Failed Attempts</label>
                </div>
            </div>
            <div style='padding-bottom:13px'>
              <button type='submit' class='btn btn-warning btn-md form-control'><i class='fa fa-save'></i> Save modifications</button>
              </form>
            </div>
            <button class='btn btn-danger btn-md form-control' id="del" onclick="areyou()"><i class='fa fa-trash'></i> Delete User</button>
            <script>
              function areyou(){
                if(confirm("Are you sure you want to delete <?=$user->username?> ?")){
                  alert('Deleting user');
                  window.location.href='<?=base_url("admin/delete_user/".$user->id)?>';
                }else{
                  return;
                }
              }
            </script>
        </div>
    </div>
</div>
</div>

<div class='row col-9'>
  <div class="col-12">
    <div class="card card-primary">
      <div class='card-header'>
          <h3 class='card-title'><i class='fa fa-clipboard-list' style='padding-right:13px'></i>User Information</h3>
      </div>
      <div class="card-body">
        <div class="container">
          <form action='<?=base_url("user/".$user->username."/edit")?>' method='post'>
                    <?php
                    $csrf = array(
                    'name' => $this->security->get_csrf_token_name(),
                    'hash' => $this->security->get_csrf_hash()
            );?>

            <input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />                
            <div class="form-group">
              <label for="">Username:</label>
              <input type="text" class="form-control" disabled name='username' value="<?=$user->username?>">
            </div>
            <div class="form-group">
              <label for="">First Name:</label>
              <input type="text" class="form-control" required name="fName" value="<?=$user->fName?>">
            </div>
            <div class="form-group">
              <label for="">Last Name:</label>
              <input type="text" class="form-control" required name="lName" value="<?=$user->lName?>">
            </div>
            <div class='form-group'>
              <label for=''>Access Level:</label>
              <select class="form-control" required name='level'>
                <?php if($user->level==1): ?>
                <option value='1' selected >1 - Super Admin</option>
                <option value='2' >2 - Admin</option>
                <option value='3' >3 - User</option>
                <?php elseif($user->level==2): ?>
                <option value='2' selected >2 - Admin</option>
                <option value='1' >1 - User</option>
                <option value='3' >3 - Super Admin</option>
                <?php elseif($user->level==3): ?>
                <option value='2' >2 - Admin</option>
                <option value='1' >1 - User</option>
                <option value='3' selected>3 - Super Admin</option>
                <?php endif;?>
              </select>
            </div>
            <input type='submit' class='btn btn-warning btn-md' value='Update user info'/>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="col-12">
    <div class="card card-primary">
      <div class='card-header'>
          <h3 class='card-title'><i class='fa fa-user-shield' style='padding-right:13px'></i>Special Roles</h3>
      </div>
      <div class="card-body">
        <div class='container pb-4 pl-4'>
        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#modelId">
          <i class="fa fa-plus pr-1"></i>Add Special Role
        </button>
        </div>
        <div class="container">
          <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Roles</th>
                            <th>Granted by</th>
                            <th>Granted Date</th>
                            <th>Revoke</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($roles as $r): ?>
                    <tr>
                      <td><?=$r->role?></td>
                      <td><?=$r->grantedBy?></td>
                      <td><?=$r->grantedDate?></td>
                      <td><a href='<?=base_url("admin/revoke/".$r->id."/".$user->username)?>' class='btn btn-sm btn-danger'>Revoke</a></td>
                    </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Roles</th>
                            <th>Granted by</th>
                            <th>Granted Date</th>
                            <th>Revoke</th>
                        </tr>
                    </tfoot>
                </table>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Special Role</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
      </div>
      <div class="modal-body">
        <form method="post" action="<?=base_url('admin/roles_add')?>">
          <div class="form-group">
            <label>Username:</label>
            <input type="text" class="form-control" value="<?=$user->username?>" disabled/>
            <input type="hidden" value="<?=$user->username?>" name="username"/>
          </div>
          <div class="form-group">
            <label for="">Maker / Checker</label>
            <select class="form-control" name="maker-checker" id="">
              <option>Maker</option>
              <option>Checker</option>
            </select>
          </div>
          <div class="form-group">
            <label for="">Role to grant</label>
            <select class="form-control" name="role" id="">
              <option>Policy upload</option>
              <option>Manuals upload</option>
              <option>Process upload</option>
              <option>Blacklist Persons upload</option>
              <option>Blacklist Company upload</option>
              <option>Blacklist Country upload</option>
              <option>Product Guide upload</option>
              <option>Pep upload</option>
              <option>Indemnity upload</option>
              <option>Form upload</option>
            </select>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save</button>
        </form>
      </div>
    </div>
  </div>
</div>



</div>


