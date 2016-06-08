<?php 
$self->document->setTitle('Setting');
echo $self->load->controller('common/header'); echo $self->load->controller('common/column_left');
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
                            <li class="active">
                                <a href="javascript:void(0)">Edit Your profile</a>
                            </li>
                        </ol>
                        <div class="page-heading mb0" style="margin-top:0px;">
                            <h1>Your Profile Information</h1>
                        </div>
                        <div class="page-tabs">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a data-toggle="tab" href="#EditProfile" >Account</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#ChangePassword">Login Password</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#ChangePassword2">Transaction Password</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#BitcoinWallet">Bank Address</a>
                                </li>
                            </ul>
                        </div>
                        <div class="account container-fluid">
                            <!-- Content Row -->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="alert alert-edit-account" style="display:none">
                                        <i class="fa fa-check"></i> Edit account successfull
                                    </div>
                                </div>
                            </div>
                            <div class="row tab-content">
                                <!-- Content Row -->
                                <div class="tab-pane active" id="EditProfile" data-link="<?php echo $self -> url -> link('account/setting/account', '', 'SSL'); ?>" data-id="<?php echo $self->session -> data['customer_id'] ?>" >
                                    <div class="form-horizontal"  >
                                        <div class="col-md-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h2>Account</h2>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="UserName">UserName</label>
                                                            <div class="col-md-9">
                                                                <input class="form-control valid" id="UserName" readonly="readonly" type="text" value="" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="Level">Level</label>
                                                            <div class="col-md-9">
                                                                <label class="control-label">
                                                                    <code id="Level">
                                                                        
                                                                    </code>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="Email">Email address</label>
                                                            <div class="col-md-9">
                                                                <input readonly="true" class="form-control" data-link="<?php echo $self -> url -> link('account/register/checkemail', '', 'SSL'); ?>" id="Email" name="email" type="text" value=""/>
                                                                <span id="Email-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="Phone">Phone number</label>
                                                            <div class="col-md-9">
                                                                <input readonly="true" data-link="<?php echo $self -> url -> link('account/register/checkphone', '', 'SSL'); ?>" class="form-control" id="Phone" name="telephone" type="text" value=""/>
                                                                <span id="Phone-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="ChangePassword">
                                    <form id="frmChangePassword" action="<?php echo $self -> url -> link('account/setting/editpasswd', '', 'SSL'); ?>" class="form-horizontal" method="post" novalidate="novalidate">
                                        <div class="col-md-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h2>Login Password</h2>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="OldPassword">Old Password</label>
                                                            <div class="col-md-9">
                                                                <input class="form-control" id="OldPassword" type="password" data-link="<?php echo $self -> url -> link('account/setting/checkpasswd', '', 'SSL'); ?>" />
                                                                <span id="OldPassword-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="Password">New Password</label>
                                                            <div class="col-md-9">
                                                                <input class="form-control" id="Password" name="password" type="password"/>
                                                                <span id="Password-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="ConfirmPassword">Confirm New Password</label>
                                                            <div class="col-md-9">
                                                                <input class="form-control" id="ConfirmPassword"  type="password"/>
                                                                <span id="ConfirmPassword-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel-footer">
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div id="success"></div>
                                                            </div>
                                                            <div class="col-sm-6 col-sm-offset-3">
                                                                <div class="btn-toolbar">
                                                                    <button type="submit" class="btn btn-primary">Update</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="ChangePassword2">
                                    <form id="changePasswdTransaction" action="<?php echo $self -> url -> link('account/setting/edittransactionpasswd', '', 'SSL'); ?>" class="form-horizontal" method="post" novalidate="novalidate">
                                        <div class="col-md-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h2>Transaction Password</h2>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="TranoldPassword">Old Password</label>
                                                            <div class="col-md-9">
                                                                <input class="form-control" id="TranoldPassword" type="password" data-link="<?php echo $self -> url -> link('account/setting/checkpasswdtransaction', '', 'SSL'); ?>" />
                                                                <span id="TranoldPassword-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="Tranpassword">New Password</label>
                                                            <div class="col-md-9">
                                                                <input class="form-control" id="Tranpassword_New" name="transaction_password" type="password"/>
                                                                <span id="Tranpassword_New-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="control-group form-group">
                                                        <div class="controls">
                                                            <label class="col-md-3 control-label" for="TranConfirmPassword">Confirm Password</label>
                                                            <div class="col-md-9">
                                                                <input class="form-control" id="TranConfirmPassword" type="password"/>
                                                                <span id="TranConfirmPassword-error" class="field-validation-error" style="display:none">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel-footer">
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div id="success"></div>
                                                            </div>
                                                            <div class="col-sm-6 col-sm-offset-3">
                                                                <div class="btn-toolbar">
                                                                    <button type="submit" class="btn btn-primary">Change Password</button>
                                                                    <a href="/Member/ForgotPassword2" onclick="return confirm('Do you want to Reset Transaction Password?')" class="btn btn-danger">Reset Transaction Password</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="BitcoinWallet">

                                    <div class="col-md-12">
                                    <div class="row">
                                    <div class="col-md-12">
                                        <div class="alert account-bank" style="display:none">
                                            <i class="fa fa-check"></i> Edit bank successfull
                                            </div>
                                        </div>
                                    </div>
                                        <div class="panel">
                                            <div class="panel-heading" id="Banksinfo" data-link="<?php echo $self -> url -> link('account/setting/banks', '', 'SSL'); ?>" data-id="<?php echo $self->session -> data['customer_id'] ?>">Bank Address</div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                       
                                                        <!-- /.col-lg-6 (nested) -->
                                                        <?php if(!$banks['account_holder'] || !$banks['bank_name'] || !$banks['account_number'] || !$banks['branch_bank'] ){?>
                                                         <form id="updateBanks" action="<?php echo $self -> url -> link('account/setting/updatebanks', '', 'SSL'); ?>" method="GET" novalidate="novalidate">
                                                         <?php }?>
                                                            <div style="margin-bottom:20px">
                                                                <label for="Accountholders">Account holders</label>
                                                                <input <?php echo $banks['account_holder'] ? 'readonly="true"' : ''?> class="form-control" id="Accountholders" name="account_holder" value="<?php echo $banks['account_holder'] ?>" type="text"/>
                                                                <span id="Accountholders-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                            <div style="margin-bottom:20px">
                                                                <label for="Bankname">Bank name</label>
                                                                <input <?php echo $banks['bank_name'] ? 'readonly="true"' : ''?> value="<?php echo $banks['bank_name'] ?>" class="form-control" id="Bankname" name="bank_name" type="text"/>
                                                                <span id="Bankname-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                            <div style="margin-bottom:20px">
                                                                <label for="Accountnumber">Account number</label>
                                                                <input <?php echo $banks['account_number'] ? 'readonly="true"' : ''?> value="<?php echo $banks['account_number'] ?>" class="form-control" id="Accountnumber" name="account_number" type="text"/>
                                                                <span id="Accountnumber-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                            <div style="margin-bottom:20px">
                                                                <label for="Branchbank">Branch</label>
                                                                <input <?php echo $banks['branch_bank'] ? 'readonly="true"' : ''?> value="<?php echo $banks['branch_bank'] ?>" class="form-control" id="Branchbank" name="branch_bank" type="text"/>
                                                                <span id="Branchbank-error" class="field-validation-error">
                                                                    <span></span>
                                                                </span>
                                                            </div>
                                                            
                                                            <div class="loading">

                                                            </div>
                                                        <?php if(!$banks['account_holder'] || !$banks['bank_name'] || !$banks['account_number'] || !$banks['branch_bank'] ){?>
                                                            <button type="submit" class="btn btn-primary">Update</button>
                                                        </form>
                                                        <?php }?>
                                                        
                                                    </div>
                                                    
                                                </div>
                                                <!-- /.row (nested) -->
                                            </div>
                                            <!-- /.panel-body -->
                                        </div>
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
<?php echo $self->load->controller('common/footer') ?>