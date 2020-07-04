<!DOCTYPE html>
<html lang="en">

<head>
<link rel='icon' href='<?php echo base_url(); ?>assets/img/logo2.jpg'/>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>OIP-ORIENT INFORMATION PORAL</title>

	<!-- Custom fonts for this template-->
	<link href="<?php echo base_url(); ?>assets/css/lg/all.min.css" rel="stylesheet" type="text/css">

	<!-- Custom styles for this template-->
	<link href="<?php echo base_url(); ?>assets/css/lg/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-secondary">

<div class="container pt-5">

	<!-- Outer Row -->
	<div class="row justify-content-center">

		<div class="col-xl-7 col-lg-7 col-md-7">

			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-12 p-5">
							<div class="">
								<center><img src='<?php echo base_url(); ?>assets/img/logo2.jpg' style='height:100px;width:100px;border-radius:20%;'/></center>
								<div class="text-center">
									<h1 class="h3 text-gray-900 mb-4 font-weight-bolder">ORIENT INFORMATION PORTAL</h1>
                                </div>
                                <div class="text-center">
                                    <h5 class="text-gray-900 ">Mandatory Password Change</h5>
                                    <p>Please Change your password to proceed</p>
								</div>
								<!--<div class="alert alert-danger alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										<span class="sr-only">Close</span>
									</button>
									<strong><i class='fa fa-heart-broken' style='color:red;'></i> Error!</strong> Wrong username/password
								</div>-->
								<?php 
								session_destroy();
								echo validation_errors('
								<div class="alert alert-danger alert-dismissible fade show" role="alert">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
									<span class="sr-only">Close</span>
								</button>
								<strong><i class="fa fa-heart-broken" style="color:red;"></i> Error! </strong>','</div>');
								
								if($this->session->flashdata('LOGGED_OUT')){
									echo '
									<div class="alert alert-success alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										<span class="sr-only">Close</span>
									</button>
									<strong><i class="fa fa-heart" style="color:red;"></i> Error!</strong> '.$this->session->flashdata('LOGGED_OUT').'
								</div>';
								}
								if($this->session->flashdata('INVALID_USERNAME')){
									echo '
									<div class="alert alert-danger alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										<span class="sr-only">Close</span>
									</button>
									<strong><i class="fa fa-heart-broken" style="color:red;"></i> Error!</strong> '.$this->session->flashdata('INVALID_USERNAME').'
								</div>';
								}else if($this->session->flashdata('INVALID_PWD')){
									echo '
									<div class="alert alert-danger alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										<span class="sr-only">Close</span>
									</button>
									<strong><i class="fa fa-heart-broken" style="color:red;"></i> Error!</strong> '.$this->session->flashdata('INVALID_PWD').'
								</div>';
								}else if($this->session->flashdata('LOCKED')){
									echo '
									<div class="alert alert-danger alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										<span class="sr-only">Close</span>
									</button>
									<strong><i class="fa fa-heart-broken" style="color:red;"></i> Error!</strong> '.$this->session->flashdata('LOCKED').'
								</div>';
								}
								else if($this->session->flashdata('EXPIRED')){
									echo '
									<div class="alert alert-warning alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										<span class="sr-only">Close</span>
									</button>
									<strong><i class="fa fa-ban" style="color:red;"></i> Warning!</strong> '.$this->session->flashdata('EXPIRED').'
								</div>';
								}
								?>
								<form class="user" method='post' action='<?php echo base_url();?>auth/mustChange'>
								<?php
								$csrf = array(
										'name' => $this->security->get_csrf_token_name(),
										'hash' => $this->security->get_csrf_hash()
								);?>

								<input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />	
								<div class="form-group">
										<input type="password" required class="form-control form-control-user" name='password' placeholder="New Password">
									</div>
									<div class="form-group">
										<input type="password" required class="form-control form-control-user" name="password2" placeholder="Re-enter Password">
                                    </div>
                                    <input type='hidden' value="<?php echo $user_id; ?>" name="uid"/>
									<hr>
									<button type="submit" class="btn btn-outline-success btn-user btn-block">
										<strong>Login</strong>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="<?php echo base_url(); ?>assets/js/lg/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lg/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?php echo base_url(); ?>assets/js/lg/sb-admin-2.min.js"></script>

</body>

</html>
