<div class="row">
    <div class="container col-10 col-md-10">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-building" style="padding-right:13px"></i><strong>Companies</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Company Name</th>
                            <th>View Company Info</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php for($i=1;$i<=20;$i++){
                        echo '
                        <tr>
                        <td>'.$i.'</td>
                        <td>Fumbe Limited'.$i.'</td>
                        <td><a href="" class="btn btn-success btn-sm"><i class="fa fa-eye"></i> View PDF</a></td>
                    </tr>
                        ';
                    }
                    ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Number</th>
                            <th>Company Name</th>
                            <th>View Company Info</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
