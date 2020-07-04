<div class='row ml-2 mr-2'>
    <?php
    if($this->session->flashdata('ACCESS2')){
        echo '
        <div class="col-md-10 col-10">
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            <span class="sr-only">Close</span>
        </button>
        <strong><i class="fa fa-lock" style="padding-right:13px;"></i>Access Denied!</strong> '.$this->session->flashdata('ACCESS2').'
        </div>
        </div>
        ';
    }
    ?>
    
    <div class='col-md-12' style='padding-top:20px'><h4>Overview</h4></div>
    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="small-box bg-success">
            <div class="inner">
                <h3><?=$policies?></h3>
                <p>Policies</p>
            </div>
            <div class="icon">
                <i class="fa fa-gavel"></i>
            </div>
            <a href="<?php base_url();?>policies" class="small-box-footer">View More <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="small-box bg-warning">
            <div class="inner">
                <h3><?=$manuals?></h3>
                <p>Manuals</p>
            </div>
            <div class="icon">
                <i class="fa fa-cogs"></i>
            </div>
            <a href="<?php base_url();?>manuals" class="small-box-footer">View More <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="small-box bg-danger">
            <div class="inner">
                <h3><?=$processes?></h3>
                <p>Process Flows</p>
            </div>
            <div class="icon">
                <i class="fa fa-spinner"></i>
            </div>
            <a href="<?php base_url();?>process_flows" class="small-box-footer">View More <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="small-box bg-primary">
            <div class="inner">
                <h3><?=$blacklists?></h3>
                <p>Blacklists</p>
            </div>
            <div class="icon">
                <i class="fa fa-ban"></i>
            </div>
            <a href="<?php base_url();?>blacklist_persons" class="small-box-footer">View More <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="small-box bg-success">
            <div class="inner">
                <h3><?=$products?></h3>
                <p>Product Guide</p>
            </div>
            <div class="icon">
                <i class="fa fa-shopping-bag"></i>
            </div>
            <a href="<?php base_url();?>product_guide" class="small-box-footer">View More <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="small-box bg-warning">
            <div class="inner">
                <h3><?=$forms?></h3>
                <p>Forms</p>
            </div>
            <div class="icon">
                <i class="fa fa-clipboard-check"></i>
            </div>
            <a href="<?php base_url();?>forms" class="small-box-footer">View More <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-12" style='padding-top:20px'><h4>Quick links</h4></div>
    <div class='col-lg-3 col-md-6 col-sm-6'>
        <a style="width:100%" href="<?php base_url();?>name_search" class="btn btn-outline-success btn-lg"><strong>Name Search <i class="fas fa-user"></i></strong></a>
    </div>
    <div class='col-lg-3 col-md-6 col-sm-6'>
        <a style="width:100%" href="<?php base_url();?>cif_search" class="btn btn-outline-primary btn-lg"><strong>CIF Search <i class="fas fa-ellipsis-v"></i></strong></a>
    </div>
    <div class='col-lg-3 col-md-6 col-sm-6'>
        <a style="width:100%" href="<?php base_url();?>forms" class="btn btn-outline-danger btn-lg"><strong>Forms <i class="fas fa-window-restore"></i></strong></a>
    </div>
    <div class='col-lg-3 col-md-6 col-sm-6'>
        <a style="width:100%" href="<?php base_url();?>pep_list" class="btn btn-outline-primary btn-lg"><strong>Pep List <i class="fas fa-users"></i></strong></a>
    </div>

    <div class="col-lg-12 col-md-12 col-sm-12" style='padding-top:100px'>
        <center>
            <img src="<?php echo base_url(); ?>assets/img/logo2.jpg" style="height:200px;width:200px;border-radius:20%"/>
            <h5>This is a closely monitored system.</h5>
        </center>
    </div>
</div>