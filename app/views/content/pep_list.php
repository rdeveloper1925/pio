<div class="row">
    <div class="container col-12 col-md-12">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-users" style="padding-right:13px"></i><strong>PEP List</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>PEP Individual</th>
                            <th>View</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($peps as $k=>$pep): ?>
                    <tr>
                        <td><?=$k+1?></td>
                        <td><?=$pep?></td>
                        <td><a target='_blank' href="<?=base_url('assets/files/pep/'.$pep)?>" class='btn btn-success btn-sm'><i class="fa fa-file-download"></i> View File</a></td>
                    </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>No.</th>
                            <th>PEP Individual</th>
                            <th>View</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
