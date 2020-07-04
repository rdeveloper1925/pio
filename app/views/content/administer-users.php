<div class="row pl-1 pr-1">
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="fa fa-user-plus" style="padding-right:13px"></i>Create New User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
            <div class="modal-body">
                
            <form method='post' action='<?=base_url("admin/new_user")?>'>
            <?php
        $csrf = array(
        'name' => $this->security->get_csrf_token_name(),
        'hash' => $this->security->get_csrf_hash()
);?>

<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
                    <div class="form-group">
                        <label for="">Username:</label>
                        <input type="text" class="form-control" value='<?=set_value("username")?>' required name="username" >
                    </div>
                    <div class="form-group">
                        <label for="">First Name:</label>
                        <input type="text" class="form-control" value='<?=set_value("fName")?>' required name="fName" >
                    </div>
                    <div class="form-group">
                        <label for="">Surname:</label>
                        <input type="text" class="form-control" value='<?=set_value("lName")?>' required name="lName" >
                    </div>
                    <div class="form-group">
                        <label for="">Access Level:</label>
                        <select class="form-control" name="level" required aria-describedby="helpId1">
                        <option value='1'>1</option>
                        <option value='2'>2</option>
                        <option value='3'>3</option>
                        </select>
                        <small id="helpId1" class="form-text text-muted">1=normal user, 2=admin, 3=super admin</small>
                    </div>
                    <div class="form-group">
                        <label for="">Preliminary Password:</label>
                        <input type="password" class="form-control" name="password" aria-describedby="helpId2" required>
                        <small id="helpId2" class="form-text text-muted">Share this with user for first-time login</small>
                    </div>
                    <input type="submit" class="btn btn-success" value='Create User'/>
                    <input type='reset' class='btn btn-secondary' value='Reset Form'/>
                </form>

            </div>
        </div>
    </div>
</div>

    <div class="container col-12 col-md-12">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-users-cog" style="padding-right:13px"></i><strong>Users</strong></h3>
            </div>
            <div class="card-body">
                <div class="col-3 pb-2">
                    <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#modelId">
                    <i class="fa fa-user-plus" style="padding-right:13px"></i>Create New User
                    </button>
                </div>
                
                <div class='col-12'>
                <div class='col-12 pb-2'>
                    <?=validation_errors('<div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <strong><i class="fa fa-heart-broken" style="padding-right:13px;"></i>Error!</strong>',
                    '</div>')?>
                    <?php if($this->session->flashdata('success')):?>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <strong><i class="fa fa-heart" style="padding-right:13px;"></i>Success!</strong> <?=$this->session->flashdata('success')?>
                    </div>
                    <?php endif; ?>
                    <?php if($this->session->flashdata('fail')):?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <strong><i class="fa fa-heart-broken" style="padding-right:13px;"></i>Error!</strong> <?=$this->session->flashdata('fail')?>
                    </div>
                    <?php endif; ?>
                    </div>
                </div>
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>NO.</th>
                            <th>Username</th>
                            <th>Full Name</th>
                            <th>Access Level</th>
                            <th>Must Change Password</th>
                            <th>Locked</th>
                            <th>Failed Attempts</th>
                            <th>Maker</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($users->result() as $k=>$user):?>
                    <tr>
                        <td><?=$user->id?></td>
                        <td><?=$user->username?></td>
                        <td><?=$user->fName?> <?=$user->lName?></td>
                        <td><strong><?=$user->level?></strong></td>
                        <td><?php if($user->mustChangePwd){echo '<span class="btn btn-sm btn-danger">Must Change</span>';}else{echo '<span class="btn btn-sm btn-success">No Change</span>';}?></td>
                        <td><?php if($user->locked){echo '<span class="btn btn-sm btn-danger"><i class="fa fa-lock"></i></span>';}else{echo '<span class="btn btn-sm btn-success"><i class="fa fa-lock-open"></i></span>';}?></td>
                        <td><strong><?=$user->failedAttempts?></strong></td>
                        <td><?=$user->maker?></td>
                        <td><a class="pr-1" href="<?=base_url('user/'.$user->username.'/view')?>" data-toggle="tooltip" data-placement="top" title="View"><span class="btn btn-primary btn-sm"><i class="fa fa-eye"></i> / <i class="fa fa-pen-fancy"></i></span></a>
                    </tr>
                    <?php endforeach;?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Username</th>
                            <th>Full Name</th>
                            <th>Access Level</th>
                            <th>Must Change Password</th>
                            <th>Locked</th>
                            <th>Failed Attempts</th>
                            <th>Maker</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table><div class="col-6 pb-2">
                    <a href="<?=base_url('admin/user_export')?>" class="btn btn-success btn-md">
                    <i class="fa fa-file-download" style="padding-right:13px"></i>Export to excel
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
