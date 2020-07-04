
<div class="row" style="padding:15px">
    <div class='container col-md-9 col-9'>
      <form action="<?=base_url('fcubs/ns')?>" method="post">
      <?php
        $csrf = array(
        'name' => $this->security->get_csrf_token_name(),
        'hash' => $this->security->get_csrf_hash()
);?>

<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
        <div class="form-group">
          <input type="text" value="<?=set_value('name')?>" class="form-control form-control-lg" name="name" style="text-transform:uppercase;" required placeholder="Customer Name" />
        </div>
        <div class="form-group pb-4" style="padding-left:85%;padding-right:0px">
          <button type="submit" class="btn btn-success btn-lg">Search  <span><i class="fa fa-search"></i></span></button>
        </div>
      </form>
      <?=validation_errors('
      <div class="alert alert-warning alert-dismissible fade show" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        <span class="sr-only">Close</span>
      </button><i class="fa fa-heart-broken" style="color:red"></i><strong>Error! </strong>','</div>')?>

      <!--<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">Close</span>
        </button><i class="fa fa-heart-broken" style="color:red"></i><strong>Error! </strong> Name not found.
      </div>-->
    </div>
    <div class="col-md-12 col-12">
        <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title"><strong>Search Results</strong></h3>
            </div>
            <div class="card-body">
              <table id="tb" class="table datatable table-bordered table-hover">
                <thead>
                <tr>
                  <th>Branch</th>
                  <th>Class</th>
                  <th>CCY</th>
                  <th>CIF</th>
                  <th>ACC Number</th>
                  <th>MBac</th>
                  <th>ACC. NAME</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($nameResults)&&!empty($nameResults->result_array())): ?>
                  <?php foreach($nameResults->result_array() as $rs): ?>
                    <tr>
                      <td><?= $rs['BRANCH_CODE']?></td>
                      <td><?= $rs['ACCOUNT_CLASS']?></td>
                      <td><?= $rs['CCY']?></td>
                      <td><a href="<?=base_url('fcubs/cif_find/'.$rs['CUST_NO'])?>" class="btn btn-sm btn-primary"><?= $rs['CUST_NO']?></a></td>
                      <td><?= $rs['CUST_AC_NO']?></td>
                      <td><?= $rs['ALT_AC_NO']?></td>
                      <td><?= $rs['AC_DESC']?></td>
                      <td><?= $rs['ACC_STATUS']?></td>
                    </tr>
                  <?php endforeach; ?>
                  <?php else: ?>
                    <tr>
                      <td colspan='8'>
                        <center><h5>Name Not found. Please refine your search</h5></center>
                      </td>
                    </tr>
                  <?php endif;?>
                </tbody>
                <tfoot>
                <tr>
                  <th>Branch</th>
                  <th>Class</th>
                  <th>CCY</th>
                  <th>CIF</th>
                  <th>ACC Number</th>
                  <th>MBac</th>
                  <th>ACC. NAME</th>
                  <th>Status</th>
                </tr>
                </tfoot>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-12"><center>
      <img src="<?=base_url('assets/img/logo2.jpg')?>" style="border-radius: 13px" height="200px"/></center>
    </div>
</div>
<script>
$(document).ready(function() {
    $('#tb').DataTable({
        'paging':true,
        'ordering':true
    });
} );
</script>
