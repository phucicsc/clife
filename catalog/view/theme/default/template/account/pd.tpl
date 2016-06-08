<?php
$self -> document -> setTitle('List of Provide Donation (PD)');
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
                                <a href="#">List of Provide Donation (PD)</a>
                            </li>
                        </ol>
                        <div class="page-heading">
                            <h1>List of Provide Donation (PD)</h1>
                            <div class="options">
                                <div class="btn-toolbar">
                                    <a href="<?php echo $self -> url -> link('account/pd/create', '', 'SSL'); ?>" class="btn btn-default"><i class="fa fa-fw fa-plus"></i>Create Provide Donation (PD)</a>
                                </div>
                            </div>
                        </div>

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-default">

                                        <div class="panel-body panel-no-padding">
                                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">NO.</th>
                                                        <th>ACCOUNT</th>
                                                        <th>DATE CREATED</th>
                                                        <th>PD NUMBER</th>
                                                        <th>FILLED</th>
                                                        <th>MAX PROFIT(40%)</th>
                                                        <th>STATUS</th>
                                                        <th>TRANSFER LIST</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    
                                                </tbody>
                                            </table>

                                            <div class="panel-footer">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="dataTables_info" id="example_info" role="status" aria-live="polite">
                                                            Showing 0 to 0 of 0 entries
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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