<?php $route = $self -> request -> get['route']; ?>

<header id="topnav" class="navbar navbar-yellow clearfix" role="banner">
	<div class="container">
		<nav class="navbar-default">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button">
					<span class="icon-bar top-bar"></span>
					<span class="icon-bar middle-bar"></span>
					<span class="icon-bar bottom-bar"></span>
				</button>
			</div>
		</nav>
		<div class="yamm navbar-left navbar-collapse collapse in pl0">
			<ul class="nav navbar-nav main-menu header-menu-top">
				<li <?php echo $route === 'account/dashboard' ? "class='active'" : ''  ?> >
					<a href="<?php echo $self -> url -> link('account/dashboard', '', 'SSL'); ?>">Dashboard</a>
				</li>
				<li <?php echo $route === 'account/register' ? "class='active'" : ''  ?> >
					<a  href="<?php echo $self -> url -> link('account/register', '', 'SSL'); ?>">Register User</a>
				</li>
				<li <?php echo $route === 'account/token' || $route === 'account/token/transfer'? "class='active'" : ''  ?> >
					<a href="<?php echo $self -> url -> link('account/token', '', 'SSL'); ?>">Pin</a>
				</li>
				<li <?php echo $route === 'account/pd' || $route === 'account/pd/create' ? "class='active'" : ''  ?> >
					<a href="<?php echo $self -> url -> link('account/pd', '', 'SSL'); ?>">Provide Donation (PD)</a>
				</li>
				<li <?php echo $route === 'account/gd' ? "class='active'" : ''  ?> >
					<a href="<?php echo $self -> url -> link('account/gd', '', 'SSL'); ?>">Get Donation (GD)</a>
				</li>
				<li <?php echo $route === 'account/refferal' ? "class='active'" : ''  ?> >
					<a href="<?php echo $self -> url -> link('account/refferal', '', 'SSL'); ?>">Refferal(S)</a>
				</li>
				<li <?php echo $route === 'account/personal' ? "class='active'" : ''  ?> >
					<a href="<?php echo $self -> url -> link('account/personal', '', 'SSL'); ?>">Downline Tree</a>
				</li>
				<li <?php echo $route === 'account/transaction' ? "class='active'" : ''  ?> >
					<a href="<?php echo $self -> url -> link('account/transaction', '', 'SSL'); ?>">Transaction History</a>
				</li>
			</ul>
		</div>

		<ul class="nav navbar-nav toolbar pull-right">

			<li class="dropdown toolbar-icon-bg" style="display: none;">
				<a href="#" id="navbar-links-toggle" data-toggle="collapse" data-target="header>.navbar-collapse"> <span class="icon-bg"> <i class="fa fa-fw fa-ellipsis-h"></i> </span> </a>
			</li>
			<li class="dropdown toolbar-icon-bg">
				<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="icon-bg"><i class="fa fa-fw fa-user"></i></span></a>
				<ul class="dropdown-menu userinfo arrow">
					<li>
						<a href="<?php echo $self -> url -> link('account/setting', '', 'SSL'); ?>"> <span class="pull-left"> <?php echo $self -> language -> get('profileSetting'); ?> </span> </a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="<?php echo $self -> url -> link('account/logout', '', 'SSL'); ?>"> <span class="pull-left"> <?php echo $self -> language -> get('logout'); ?> </span> <i class="pull-right fa fa-sign-out"></i> </a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</header>

