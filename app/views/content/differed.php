<div class="row">

    <div class="container col-12 col-md-12">
        <div class="card card-primary col-md-5">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-plus" style="padding-right:13px"></i><strong>New Defferal</strong></h3>
            </div>


            <?php if($this->session->flashdata('success')): ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <strong><?=$this->session->flashdata('success')?></strong> 
            </div>
            <?php endif;?>
            <?php if($this->session->flashdata('fail')): ?>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <strong><?=$this->session->flashdata('fail')?></strong> 
            </div>
            <?php endif; ?>
            <script>
              $(".alert").alert();
            </script>

            <div class="card-body">
            <form method="post" action="<?=base_url('admin/defferal_upload')?>">
              <div class="row">
                  <div class="form-group col-md-6">
                    <label for="">Branch / BranchCode:</label>
                    <select class="form-control" name="branch_code" id="">
                      <option>001-Main Branch</option>
                      <option>005-William Street</option>
                      <option>006-Entebbe Town</option>
                      <option>007-Entebbe Airport</option>
                      <option>008-Kawempe</option>
                      <option>009-Mbale</option>
                      <option>010-Gulu</option>
                      <option>011-Kololo</option>
                      <option>012-Jinja Town</option>
                      <option>013-Garden City</option>
                      <option>014-Kabalagala</option>
                      <option>015-Arua</option>
                      <option>016-Kisekka</option>
                      <option>017-Ntinda</option>
                      <option>019-Kikuubo</option>
                      <option>021-Katwe</option>
                      <option>022-Makerere</option>
                      <option>023-Acacia</option>
                      <option>024-Ben Kiwanuka</option>
                      <option>025-Bweyogerere</option>
                      <option>026-Nakivubo</option>
                      <option>027-Mbarara</option>
                    </select>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Creation Date:</label>
                    <input type="date" class="form-control" name="creation_date" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Sales Person:</label>
                    <input type="text" class="form-control" name="sales_person" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Account Number:</label>
                    <input type="number" class="form-control" name="account_no" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Customer Name:</label>
                    <input type="text" class="form-control" name="customer_name" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Customer Contact:</label>
                    <input type="phone" class="form-control" name="customer_contact" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Product:</label>
                    <input type="text" class="form-control" name="product" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Errors Identified:</label>
                    <input type="text" class="form-control" name="errors_identified" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Expected Closure Date:</label>
                    <input type="date" class="form-control" name="expected_closure" required >
                  </div>
                  <div class="form-group col-md-6">
                    <label for="">Defferal Authorizer:</label>
                    <input type="text" class="form-control" name="defferal_authorizer" required >
                  </div>
                  <div class="form-group col-md-12">
                    <input type="submit" value="Upload" class="btn btn-primary btn-md">
                  </div>
                  
              </div>
            </form>
            </div>
        </div>
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-gavel" style="padding-right:13px"></i><strong>Accounts Differed</strong></h3>
            </div>
            <div class="card-body">
                <table id="table" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Branch Code</th>
                            <th>Account No.</th>
                            <th>Customer Name</th>
                            <th>Expected Closure</th>
                            <th>Closure Date</th>
                            <th>Days Due</th>
                            <th>Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($diffs as $diff): ?>
                        <tr style="color:red">
                            <td><?=$diff->branch_code?></td>
                            <td><?=$diff->account_no?></td>
                            <td><?=$diff->customer_name?></td>
                            <td><?=$diff->expected_closure?></td>
                            <td><?=$diff->closure_date?></td>
                            <?php
                            
                              $expected = new DateTime($diff->expected_closure);
                              $today = new DateTime(date('Y-m-d'));
                              
                              $diference = $today->diff($expected)->format("%a");
                              echo $diference;
                            ?>
                            <td><?=$diff->id?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                    <tr>
                            <th>Branch Code</th>
                            <th>Account No.</th>
                            <th>Customer Name</th>
                            <th>Expected Closure</th>
                            <th>Closure Date</th>
                            <th>Days Due</th>
                            <th>Details</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
