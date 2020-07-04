<?php
if(!isset($details)){
    redirect(base_url('pages/dashboard'));
}
?>
<div class="row ml-2 mr-2">
    <div class="col-md-9 col-9 pl-4">
        <table>
            <tr>
                <td><span style="font-size:22px;color:#320113">Account Name: </span></td>
                <td><h3 style="display:inline;color:#013208"><?=$details['AC_DESC']?></h3></td>
            </tr>
            <tr>
                <td><span style="font-size:22px;color:#320113">Account CIF: </span></td>
                <td><h3 style="display:inline;color:#013208"><?=$details['CUST_NO']?></h3></td>
            </tr>
            <tr>
                <td><span style="font-size:22px;color:#320113">Account Balance: </span></td>
                <td><h3 style="display:inline;color:#013208"><?=$details['CCY']?>. <?=number_format($details['ACY_AVL_BAL'],0,'.',',')?></h3></td>
            </tr>
        </table>
    </div>
    <div class="col-md-3 col-3">
        <a href="<?= base_url('pages/name_search'); ?>" class="btn btn-secondary btn-md" style="width:220px"><i class="fa fa-fast-backward" style="padding-right:13px"></i>Back to Name Search</a><br><br>
        <a href="<?= base_url('pages/cif_search'); ?>" class="btn btn-success btn-md" style="width:220px"><i class="fa fa-fast-backward" style="padding-right:13px"></i>Back to CIF Search</a>
    </div>
    <div class="col-md-6 col-6 pt-5">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-clipboard" style="padding-right:13px"></i>Customer Contact Details <strong>(CIF: <?=$details['CUST_NO']?>)</strong></h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                  <label for="">Account Name:</label>
                  <input type="text" class="form-control form-control-md" disabled value="<?=$details['AC_DESC']?>">
                </div>
                <div class="row">
                    <div class="form-group col-2">
                        <label for="">Gender:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['SEX']?>">
                    </div>
                    <div class="form-group col-4">
                        <label for="">Telephone:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['D_ADDRESS3']?>">
                    </div>
                    <div class="form-group col-6">
                        <label for="">Email:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['E_MAIL']?>">
                    </div>
                    <div class="form-group col-7">
                        <label for="">Address 1:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['D_ADDRESS1']?>">
                    </div>
                    <div class="form-group col-5">
                        <label for="">Address 2:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['D_ADDRESS2']?>">
                    </div>
                    <div class="form-group col-3">
                        <label for="">Nationality:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['D_COUNTRY']?>">
                    </div>
                    <div class="form-group col-6">
                        <label for="">ID Number:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['P_NATIONAL_ID']?>">
                    </div>
                    <div class="form-group col-3">
                        <label for="">Date of Birth:</label>
                        <input type="text" class="form-control form-control-md" disabled value="<?=$detailsPersonal['DATE_OF_BIRTH']?>">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-6 pt-5">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-clipboard-check" style="padding-right:13px"></i>Other Customer Details Attached <strong>(CIF: <?=$details['CUST_NO']?>)</strong></h3>
            </div>
            <div class="card-body m-0">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ACC. Number</th>
                            <th>Telephone</th>
                            <th>Telephone2</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach($detailsOthers as $d): ?>
                        <tr>
                            <td><?=$d['ACCOUNT']?></td>
                            <td><?=$d['MOBILE_NUMBER_AT_ACC_OPENING']?></td>
                            <td><?=$d['OTHR_PHN_NUMBER_AT_ACC_OPENING']?></td>
                            <td><?=$d['EMAIL_ADDRESS_AT_AC_OPENING']?></td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-12 col-12 pt-2">
        <div class="card card-secondary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-clipboard-list" style="padding-right:13px"></i>Account Segment Attached to <strong>(CIF: <?=$details['CUST_NO']?>)</strong></h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Branch</th>
                            <th>ACC. Number</th>
                            <th>ACC. Name</th>
                            <th>Segment</th>
                            <th>SUB</th>
                            <th>Relationship</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>000001</td>
                            <td>Oreint-bank</td>
                            <td>Retail</td>
                            <td>Personal</td>
                            <td>01BR01</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>