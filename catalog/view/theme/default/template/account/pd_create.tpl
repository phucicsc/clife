<?php
$self -> document -> setTitle('Create (PD)');
echo $self -> load -> controller('common/header');
echo $self -> load -> controller('common/column_left');
?>

<div class="container">
	<div id="wrapper">
		<div id="layout-static">
			<div class="static-content-wrapper">
				<div class="static-content">
					<div class="page-content">
						<ol class="breadcrumb">
							<li>
								<a href="<?php echo $self -> url -> link('account/dashboard', '', 'SSL'); ?>">Home</a>
							</li>
							<li style="padding:0">
                                >
                            </li>
							<li>
								<a href="<?php echo $self -> url -> link('account/pd', '', 'SSL'); ?>">PD</a>
							</li>
							<li style="padding:0">
                                >
                            </li>
							<li class="active">
								<a href="#">Create PD</a>
							</li>
						</ol>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12" id="pdWrap" style="">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="heading">Create PD</h4>
										</div>

										<form class="form-horizontal margin-none" name="buy_share_form" action="" method="post" novalidate="novalidate">
											<div class="panel-body">
												<div class="form-group">
													<label class="col-md-3 control-label">Amount</label>
													<div class="col-md-9">
														<select class="form-control valid" id="amount" name="amount">
															<option value="">-- Choose your Amount --</option>
															<option value="0.00003">0.00003 BTC</option>
															<option value="0.00005">0.00005 BTC</option>
															<option value="1.00000">1.00000 BTC</option>
														</select>
														<span id="amount-error" class="field-validation-error" style="display: none;">
                                                            <span >The amount field is required.</span>
                                                        </span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label">Transaction Password</label>
													<div class="col-md-9">
														<input class="form-control" id="Password2" name="Password2" type="password"/>
														<span id="Password2-error" class="field-validation-error" style="display: none;">
                                                            <span >The transaction password field is required.</span>
                                                        </span>
													</div>
												</div>
												<div class="panel-footer text-right">
													<span class="field-validation-valid"></span>
													<button type="submit" class="btn btn-primary" style="font-weight:700">
														Create PD
													</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- #page-content -->
				</div>
			</div>
		</div>
	</div>
</div>