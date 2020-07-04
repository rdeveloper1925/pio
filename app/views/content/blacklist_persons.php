<div class="row">
    <div class="container col-10 col-md-10">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-user-slash" style="padding-right:13px"></i><strong>Local Blacklist - Entities</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Blacklisted Entity</th>
                            <th>View Policy</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($blacklists as $k=>$blacklist):?>
                    <tr>
                        <td><?=$k+1?></td>
                        <td><?=$blacklist?></td>
                        <td><a target='_blank' href="<?=base_url('assets/files/blacklist/'.$blacklist)?>" class='btn btn-success btn-sm'><i class="fa fa-file-download"></i>  View File</a></td>
                    </tr>
                    <?php endforeach;?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Number</th>
                            <th>Blacklisted Entity</th>
                            <th>View Policy</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>