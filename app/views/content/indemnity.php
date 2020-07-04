<div class="row">
    <div class="col-12 pull-right pb-4 pl-4">
    <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#modelId">
  <i class="fa fa-upload"></i>Upload Indemnity
</button>
<?=validation_errors('<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  <strong></strong>','</div>')?>
    </div>
    <div class="col-12">
    <?php if(isset($error)): ?>
    <?php foreach($error as $e): ?>
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
      <strong> <?=$e?></strong> 
    </div>
    <?php endforeach; ?>
    <?php endif; ?>
    </div>
    <?php if(!empty($indemnities_uploaded)): ?>
    <div class="container col-11 col-md-11">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-stamp" style="padding-right:13px"></i><strong>Indemnities Pending Approval</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Indemnity Title</th>
                            <th>View</th>
                            <th>Approve/Decline</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indemnities_uploaded as $k=>$i): ?>
                    <tr>
                        <td><?=$k+1?></td>
                        <td><?=$i?></td>
                        <td><a target='_blank' href="<?=base_url('assets/files/indemnities/'.$i)?>" class='btn btn-warning btn-sm'><i class="fa fa-file-download"></i> View File</a></td>
                        <td>
                            <a href="#" class='btn btn-sm btn-danger'><i class='fa fa-stop'></i> Reject</a>
                            <a href="#" class='btn btn-sm btn-success'><i class='fa fa-stamp'></i> Approve</a>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Number</th>
                            <th>Indemnity Title</th>
                            <th>View</th>
                            <th>Approve/Decline</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    <?php endif; ?>
    <div class="container col-11 col-md-11">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-balance-scale" style="padding-right:13px"></i><strong>Bank Indemnities</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Indemnity Title</th>
                            <th>View</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($indemnities_approved as $k=>$indemnity): ?>
                    <tr>
                        <td><?=$k+1?></td>
                        <td><?=$indemnity?></td>
                        <td><a target='_blank' href="<?=base_url('assets/files/indemnities/'.$indemnity)?>" class='btn btn-success btn-sm'><i class="fa fa-file-download"></i> View File</a></td>
                    </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Number</th>
                            <th>Indemnity Title</th>
                            <th>View</th>
                        </tr>
                    </tfoot>
                </table>
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
                <h5 class="modal-title">Upload Indemnity</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
            <div class="modal-body">
                <form action="<?=base_url('pages/indemnity_upload')?>" method="post" enctype="multipart/form-data">
                <?php
										$csrf = array(
										'name' => $this->security->get_csrf_token_name(),
										'hash' => $this->security->get_csrf_hash()
								);?>
                                <div class="form-group">
                                  <label for="">Name:</label>
                                  <input type="text"
                                    class="form-control" name="file_name" required>
                                </div>
                                <div class="form-group">
                                  <label for="">Indemnity</label>
                                  <input type="file" max-size="100" class="form-control-file" name="file" required >
                                </div>
                
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Save</button>
                </form>
            </div>
        </div>
    </div>
</div>
