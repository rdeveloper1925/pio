<div class="row">
    <div class="container col-10 col-md-10">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-globe" style="padding-right:13px"></i><strong>Sanctioned Countries</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Sanctioned Country</th>
                            <th>View Details</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($countries as $k=>$c): ?>
                    <tr>
                        <td><?=$k+1?></td>
                        <td><?=$c?></td>
                        <td><a target='_blank' href="<?=base_url('assets/files/sanctioned/'.$c)?>" class='btn btn-success btn-sm'><i class="fa fa-file-download"></i> View File</a></td>
                    </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Number</th>
                            <th>Sanctioned Country</th>
                            <th>View details</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>