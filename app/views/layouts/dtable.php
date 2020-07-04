<!DOCTYPE html>
<html>
<head>
	<link rel='icon' href='<?= base_url('assets/img/logo2.jpg') ?>'/>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>OIP-ORIENT INFORMATION PORTAL</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		html{
			zoom: 0.8;
		}
	</style>

  <!-- DataTables -->
  <link rel="stylesheet" href="<?= base_url('assets/datatables/dataTables.bootstrap4.css') ?>">
  <!-- Theme style 
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">-->



	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?= base_url('assets/css/vendor/all.min.css') ?>">
	<!-- overlayScrollbars -->
	<link rel="stylesheet" href="<?= base_url('assets/css/vendor/adminlte.min.css') ?>">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">

		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown">
				<a class="nav-link" data-toggle="dropdown" href="#">
					<span class="d-lg-inline">Account Options<img style="height: 30px;width: 30px" src="<?= base_url('assets/img/icon-user.png') ?>" class="img-circle" alt="User Image"></span>

					<span class="badge badge-success navbar-badge"></span>
				</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<div class="dropdown-divider"></div>
					<a href="<?=base_url('pages/logout')?>" class="dropdown-item">
						<i class="fas fa-lock mr-2"></i> Logout
					</a>
					<div class="dropdown-divider"></div>
				</div>
			</li>
		</ul>
	</nav>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="#" class="brand-link">
			<img src="<?= base_url('assets/img/logo2.jpg') ?>"
				 alt="AdminLTE Logo"
				 class="brand-image img-circle elevation-3"
				 style="opacity: .8">
			<span class="brand-text font-weight-bold" style="font-size: 15px"><center>Orient Information Portal</center></span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex row">
				<div class="col-4 m-0">
					<div class="image">
						<img style="height: 100%;width: 100%" src="<?= base_url('assets/img/icon-user.png') ?>" class="elevation-4 img-circle" alt="User Image">
					</div>
				</div>
				<div class="col-8 row">
					<div class="col-12 m-0 p-0">
						<a href="#"  class="d-block font-weight-light"><?=$this->session->userdata('username')?></a>
					</div>
					<div class="col-12 m-0 p-0">
						<span class="right badge badge-success">Online</span>
					</div>
				</div>
			</div>

			<!-- Sidebar Menu USE ACTIVE -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
						 with font-awesome or any other icon font library -->
					<li class="nav-item">
						<a href="<?= base_url('pages/dashboard')?>" class="nav-link <?php if($active=='dashboard')echo 'active';?>">
							<i class="nav-icon fas fa-tachometer-alt"></i>
							<p>
								Dashboard
							</p>
						</a>
					</li>
					<li class="nav-item has-treeview">
						<a href="#" class="nav-link <?php if($active1=='customer-search')echo 'active';?>">
							<i class="nav-icon fa fa-search"></i>
							<p>Customer Search<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="<?= base_url('pages/name_search')?>" class="nav-link <?php if($active=='customer-search-name')echo 'active';?>">
									<i class="fa fa-user nav-icon"></i>
									<p>Name Search</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="<?= base_url('pages/cif_search')?>" class="nav-link <?php if($active=='customer-search-cif')echo 'active';?>">
									<i class="fa fa-ellipsis-v nav-icon"></i>
									<p>CIF Search</p>
								</a>
							</li><!--
							<li class="nav-item">
								<a href="<?= base_url('pages/company_search')?>" class="nav-link <?php if($active=='customer-search-company')echo 'active';?>">
									<i class="fa fa-building nav-icon"></i>
									<p>Company Search</p>
								</a>
							</li>-->
						</ul>
					</li>
					<li class="nav-item has-treeview">
						<a href="#" class="nav-link <?php if($active1=='pp')echo 'active';?>">
							<i class="nav-icon fa fa-book"></i>
							<p>Procedures & Policies<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="<?= base_url('pages/policies')?>" class="nav-link <?php if($active=='pp-policies')echo 'active';?>">
									<i class="fa fa-gavel nav-icon"></i>
									<p>Policies</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="<?= base_url('pages/manuals')?>" class="nav-link <?php if($active=='pp-manuals')echo 'active';?>">
									<i class="fa fa-cogs nav-icon"></i>
									<p>Manuals</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="<?= base_url('pages/process_flows')?>" class="nav-link <?php if($active=='pp-pf')echo 'active';?>">
									<i class="fa fa-spinner nav-icon"></i>
									<p>Process Flows</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item has-treeview">
						<a href="#" class="nav-link <?php if($active1=='blacklists')echo 'active';?>">
							<i class="nav-icon fa fa-ban"></i>
							<p>Blacklists<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="<?= base_url('pages/blacklist_persons')?>" class="nav-link <?php if($active=='blacklists-p')echo 'active';?>">
									<i class="fa fa-user-slash nav-icon"></i>
									<p>Local Blacklist</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="<?= base_url('pages/blacklist_companies')?>" class="nav-link <?php if($active=='blacklists-c')echo 'active';?>">
									<i class="fa fa-building nav-icon"></i>
									<p>Blacklisted Companies</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="<?= base_url('pages/sanctioned_countries')?>" class="nav-link <?php if($active=='blacklists-sc')echo 'active';?>">
									<i class="fa fa-globe nav-icon"></i>
									<p>Sanctioned Countries</p>
								</a>
							</li>
						</ul>
					</li>
					<?php if($this->session->userdata('level')>=2):?>
					<li class="nav-item has-treeview">
						<a href="#" class="nav-link <?php if($active1=='admin')echo 'active';?>">
							<i class="nav-icon fa fa-user-secret"></i>
							<p>Administration<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="<?= base_url('admin/users') ?>" class="nav-link <?php if($active=='admin-users')echo 'active';?>">
									<i class="fa fa-users-cog nav-icon"></i>
									<p>Users</p>
								</a>
							</li>
							<?php if($this->session->userdata('level')==3):?>
							<li class="nav-item">
								<a href="<?= base_url('admin/ua') ?>" class="nav-link <?php if($active=='admin-ua')echo 'active';?>">
									<i class="fa fa-user-shield nav-icon"></i>
									<p>Unauthorized Access</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="<?=base_url('admin/account_actions')?>" class="nav-link <?php if($active=='admin-aa')echo 'active';?>">
									<i class="fa fa-pen-fancy nav-icon"></i>
									<p>Audit Trail</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="<?=base_url('admin/roles')?>" class="nav-link <?php if($active=='admin-roles')echo 'active';?>">
									<i class="fa fa-user-shield nav-icon"></i>
									<p>User Roles</p>
								</a>
							</li>
							<?php endif;?>
						</ul>
					</li>
					<?php endif; ?>
					<li class="nav-item">
						<a href="<?= base_url('pages/product_guide')?>" class="nav-link <?php if($active=='product_guide')echo 'active';?>">
							<i class="nav-icon fa fa-list-ol"></i>
							<p>Product Guide</i>
							</p>
						</a>
					</li><!--
					<li class="nav-item">
						<a href="<?= base_url('pages/differal')?>" class="nav-link <?php if($active=='diff')echo 'active';?>">
							<i class="nav-icon fa fa-user-shield"></i>
							<p>Differal Accounts</i>
							</p>
						</a>
					</li>-->
					<li class="nav-item">
						<a href="<?= base_url('pages/pep_list')?>" class="nav-link <?php if($active=='pl')echo 'active';?>">
							<i class="nav-icon fa fa-users"></i>
							<p>PEP List</i>
							</p>
						</a>
					</li>
          			<li class="nav-item">
						<a href="<?= base_url('pages/indemnity')?>" class="nav-link <?php if($active=='indemnity')echo 'active';?>">
							<i class="nav-icon fa fa-balance-scale"></i>
							<p>Indemnity</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="<?= base_url('pages/forms')?>" class="nav-link <?php if($active=='forms')echo 'active';?>">
							<i class="nav-icon fa fa-window-restore"></i>
							<p>Forms</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="<?= base_url('pages/account')?>" class="nav-link <?php if($active=='account')echo 'active';?>">
							<i class="nav-icon fa fa-user-circle"></i>
							<p>My Account</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="<?= base_url('pages/logout')?>" class="nav-link">
							<i class="nav-icon fa fa-sign-out-alt"></i>
							<p>Logout</p>
						</a>
					</li>
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h3><?php echo $title;?></h3>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content use (CONTENT) -->
		<section class="content">
			<?php $this->load->view($content)?>
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<footer class="main-footer">
		<div class="float-right d-none d-sm-block">
			<b>Version</b> 2.0
		</div>
		<strong>Copyright &copy; 2019 <a href="http://www.orient-bank.com">Orient Bank Ltd</a>.</strong> All rights
		reserved.
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<?= base_url('assets/js/vendor/jquery.min.js') ?>"></script>
<!-- Bootstrap 4 -->
<script src="<?= base_url('assets/js/vendor/bootstrap.bundle.min.js') ?>"></script>

<!-- AdminLTE App -->
<script src="<?= base_url('assets/js/vendor/adminlte.min.js') ?>"></script>
<!-- DataTables -->
<script src="<?= base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
<script src="<?= base_url('assets/datatables/dataTables.bootstrap4.js') ?>"></script>
<!-- AdminLTE for trivial -->
<script src="<?= base_url('assets/datatables/demo.js') ?>"></script>
<!-- page script -->
<script>
  $(function () {
    $("#table").DataTable();
	$("#table2").DataTable();
    /*$('#company_search').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });*/
  });
</script>


</body>
</html>
