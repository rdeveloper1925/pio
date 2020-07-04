<div class="row">
    <div class="container col-11 col-md-11">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-user-shield" style="padding-right:13px"></i><strong>Unauthorized Access Logs</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Violated URL</th>
                            <th>Access time</th>
                            <th>Violator</th>
                            <th>Resource Level</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($uas as $ua):?>
                        <tr>
                            <td><?=$ua->id?></td>
                            <td><?=$ua->url?></td>
                            <td><?=$ua->access_time?></td>
                            <td><?=$ua->user_id?></td>
                            <td><?=$ua->resource_level?></td>
                        </tr>
                    <?php endforeach;?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Violated URL</th>
                            <th>Access time</th>
                            <th>Violator</th>
                            <th>Resource Level</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>