<div class="row">
    <div class="container col-10 col-md-10">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-building" style="padding-right:13px"></i><strong>Local Blacklist - Companies</strong></h3>
            </div>
            <div class="card-body">
                <table id="table2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Blacklisted Company</th>
                            <th>View Policy</th>
                        </tr>
                    </thead>
                    <tbody>
					<?php foreach ($files as $key=>$file):?>
					<tr>
						<td><?=$key+1?></td>
						<td><?=$file?></td>
						<td><a href="<?=base_url('assets/files/blacklist/'.$file)?>" class="btn btn-success btn-sm"><i class="fa fa-eye"></i> View as PDF</a></td>
					</tr>
                    <?php endforeach;?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Number</th>
                            <th>Blacklisted Company</th>
                            <th>View Policy</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
