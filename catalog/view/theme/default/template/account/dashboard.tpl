<?php 
$self->document->setTitle('Dashboard');
echo $self->load->controller('common/header'); echo $self->load->controller('common/column_left');

?>
<div class="container">
    <div id="wrapper">
        <div id="layout-static">
            <div class="static-content-wrapper">
                <div class="static-content">
                    <div class="page-content">
                        <div class="page-heading pt10 pb10 mb0">
                            <h1>Dashboard</h1>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-sm-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="javascript:;">
                                    <div class="tile-body">
                                        <div class="tile-image tile-image-c-wallet">
                                            <img src="catalog/view/theme/default/image/cwallet.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left">C - Wallet</div>
                                            <div class="content pull-right c-wallet" data-id="<?php echo $self->session -> data['customer_id'] ?>" data-link="<?php echo $self->url->link('account/dashboard/getCWallet', '', 'SSL'); ?>"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                             <div class="col-md-3 col-sm-6 col-xs-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="javascript:;">
                                    <div class="tile-body">
                                        <div class="tile-image tile-image-r-wallet">
                                            <img src="catalog/view/theme/default/image/rwallet.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left">R - Wallet</div>
                                            <div class="content pull-right r-wallet" data-id="<?php echo $self->session -> data['customer_id'] ?>" data-link="<?php echo $self->url->link('account/dashboard/getRWallet', '', 'SSL'); ?>"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="<?php echo $self->url->link('account/pd', '', 'SSL'); ?>">
                                    <div class="tile-body">
                                        <div class="tile-image tile-image-ph">
                                            <img src="catalog/view/theme/default/image/ph.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left">Provide Donation</div>
                                            <div class="content pull-right pd-count" data-id="<?php echo $self->session -> data['customer_id'] ?>" data-link="<?php echo $self->url->link('account/dashboard/countPD', '', 'SSL'); ?>"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="/GetDonation">
                                    <div class="tile-body">
                                        <div class="tile-image tile-image-gh">
                                            <img src="catalog/view/theme/default/image/gh.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left">Get Donation (GD)</div>
                                            <div class="content pull-right">0</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="<?php echo $self->url->link('account/getDonation', '', 'SSL'); ?>">
                                    <div class="tile-body">
                                        <div class="tile-image tile-image-manager-bonus">
                                            <img src="catalog/view/theme/default/image/managerbonus.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left">Manager Bonus</div>
                                            <div class="content pull-right">0 VND</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="<?php echo $self->url->link('account/token', '', 'SSL'); ?>">
                                    <div class="tile-body">
                                        <div class="tile-image tile-image-pin-balance">
                                            <img src="catalog/view/theme/default/image/pinbalance.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left">Pin Balance</div>
                                            <div class="content pull-right pin-balence"  data-id="<?php echo $self->session -> data['customer_id'] ?>" data-link="<?php echo $self->url->link('account/dashboard/totalpin', '', 'SSL'); ?>"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="">
                                    <div class="tile-body">
                                        <div class="tile-image tile-image-sponsor-bonus">
                                            <img src="catalog/view/theme/default/image/sponsorbonus.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left">Sponsor Bonus</div>
                                            <div class="content pull-right">0 VND</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-6">
                                <a class="info-tile tile-dark home-info-title" href="<?php echo $self->url->link('account/personal', '', 'SSL'); ?>">
                                    <div class="tile-body ">
                                        <div class="tile-image tile-image-downline-tree">
                                            <img src="catalog/view/theme/default/image/downlinetree.png"/>
                                        </div>
                                        <div class="tile-footer">
                                            <div class="title pull-left ">Downline Tree</div>
                                            <div class="content pull-right downline-tree" data-id="<?php echo $self->session -> data['customer_id'] ?>" data-link="<?php echo $self->url->link('account/dashboard/totaltree', '', 'SSL'); ?>"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="alert-success alert" style="padding:0px; hieght:380px !important">
                                <h3>Downline tree analytics</h3>
                                <div style="padding:8px 14px;padding-top: 14px;">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th width="50%">Level</th>
                                                <th width="50%">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php for ($i=0; $i < 6; $i++) { ?>
                                               <tr>
                                                    <td><code>L<?php echo $i ?></code></td>
                                                    <td data-level="<?php echo $i + 1 ?>" data-id="<?php echo $self->session -> data['customer_id'] ?>" data-link="<?php echo $self->url->link('account/dashboard/analytics', '', 'SSL'); ?>" class="analytics-tree analytics-tree-loading"/>
                                                </tr>
                                            <?php } ?>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="alert-success alert" style="padding:0px; height:380px;">
                                    <h3 class="heading">
                                        <i class="fa fa-bullhorn"></i>
                                        Announcement
                                    </h3>
                                     <div style="padding:8px 14px;padding-top: 14px;">
                                    <div class="media-body innerAnnounce">
                                         <?php                                        
                                         foreach ($article_limit as $key => $value) { ?>

                                             <div class="readMore" data-url="/Home/Announcement?id=3">
                                                <h5>
                                                    <a href="<?php //echo $self->url->link('simple_blog/article/viewBlogs', 'token='.$value["simple_blog_article_id"].'', 'SSL'); ?>">
                                                        <?php echo html_entity_decode($value['article_title'], ENT_QUOTES, 'UTF-8')?>
                                                    </a>
                                                </h5>
                                                <p class="text-muted"><?php echo date("d/m/Y", strtotime($value['date_modified'])); ?></p>
                                                <p>
                                                    <?php echo html_entity_decode(substr ( $value['description'] , 0 , 520 ), ENT_QUOTES, 'UTF-8')  ?>

                                               </p>
                                            </div>
                                        <?php  } ?>
                                        <?php echo $pagination; ?>
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

