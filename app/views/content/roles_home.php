<div class="row">
    <div class="col-md-10">
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
    <div class="container col-10 col-md-10">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-user-shield" style="padding-right:13px"></i><strong>User Roles</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Roles</th>
                            <th>Granted by</th>
                            <th>Granted Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($roles as $r): ?>
                    <tr>
                        <td><?=$r->username?></td>
                        <td><?=$r->role?></td>
                        <td><?=$r->grantedBy?></td>
                        <td><?=$r->grantedDate?></td>
                        <td><a href='<?=base_url("admin/revoke2/".$r->id."/".$r->username)?>' class='btn btn-sm btn-danger'>Revoke</a></td>
                    </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Username</th>
                            <th>Roles</th>
                            <th>Granted by</th>
                            <th>Granted Date</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
