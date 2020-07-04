<div class="row">
    <div class="container col-11 col-md-11">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-pen-fancy" style="padding-right:13px"></i><strong>Audit Trails - All actions</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Action</th>
                            <th>Account Owner</th>
                            <th>Maker</th>
                            <th>Date/time</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($aas as $key=>$aa):?>
                        <tr>
                            <td><?=$aa->id?></td>
                            <td><?=$aa->action?></td>
                            <td><?=$aa->account_id?></td>
                            <td><?=$aa->maker?></td>
                            <td><?=$aa->datetime_modified?></td>
                        </tr>
                    <?php endforeach;?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Action</th>
                            <th>Account Owner</th>
                            <th>Changer</th>
                            <th>Date/time</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>