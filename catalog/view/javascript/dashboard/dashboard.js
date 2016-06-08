$(document).ready(function() {

    var funDaskboard = {
        ajaxSumTreeMember : function(callback) {
            $.ajax({
                url : $('.downline-tree').data('link'),
                type : 'GET',
                data : {
                    'id' : $('.downline-tree').data('id')
                },
                async : true,
                success : function(result) {
                    result = $.parseJSON(result);
                    callback(result);
                }
            });
        },

        ajaxGetPin : function(callback) {
            $.ajax({
                url : $('.pin-balence').data('link'),
                type : 'GET',
                data : {
                    'id' : $('.pin-balence').data('id')
                },
                async : true,
                success : function(result) {
                    result = $.parseJSON(result);
                    callback(result);
                }
            });
        },

        ajaxAnalytics : function(element, callback) {
            $.ajax({
                url : element.data('link'),
                type : 'GET',
                data : {
                    'id' : element.data('id'),
                    'level' : element.data('level')
                },
                async : true,
                success : function(result) {
                    result = $.parseJSON(result);
                    callback(result);
                }
            });
        },
        ajaxGetTotalPD : function(callback) {
            $.ajax({
                url : $('.pd-count').data('link'),
                type : 'GET',
                data : {
                    'id' : $('.pd-count').data('id')
                },
                async : true,
                success : function(result) {
                    result = $.parseJSON(result);
                    callback(result);
                }
            });
        },

        ajaxGetR_Wallet : function(callback) {
            $.ajax({
                url : $('.r-wallet').data('link'),
                type : 'GET',
                data : {
                    'id' : $('.r-wallet').data('id')
                },
                async : true,
                success : function(result) {
                    result = $.parseJSON(result);
                    callback(result);
                }
            });
        },

        ajaxGetC_Wallet : function(callback) {
            $.ajax({
                url : $('.c-wallet').data('link'),
                type : 'GET',
                data : {
                    'id' : $('.c-wallet').data('id')
                },
                async : true,
                success : function(result) {
                    result = $.parseJSON(result);
                    callback(result);
                }
            });
        },
    }

    funDaskboard.ajaxSumTreeMember(function(result) {
        _.has(result, 'success') && $('.downline-tree').html(_.values(result)[0]);
        _.each($('.downline-tree').data(), function(v, e) {
            $('.downline-tree').removeAttr('data-' + e);
        });
        $('.tile-image-downline-tree + div').css({
            'background-image' : 'none'
        });
    });

    funDaskboard.ajaxGetPin(function(result) {
        _.has(result, 'success') && $('.pin-balence').html(_.values(result)[0]);
        _.each($('.pin-balence').data(), function(v, e) {
            $('.pin-balence').removeAttr('data-' + e);
        });

        $('.tile-image-pin-balance + div.tile-footer').css({
            'background-image' : 'none'
        });
    });
    _.each([0, 1, 2, 3, 4, 5, 6], function(value) {
        funDaskboard.ajaxAnalytics($('td.analytics-tree[data-level=' + value + ']'), function(result) {
            _.has(result, 'success') && $('td.analytics-tree[data-level=' + value + ']').html(_.values(result)[0] + '<i class="fa fa-user"></i>');
            $('td.analytics-tree[data-level=' + value + ']').css({
                'background-image' : 'none'
            });
        });
    });

    funDaskboard.ajaxGetTotalPD(function(result) {
        _.has(result, 'success') && $('.pd-count').html(_.values(result)[0]);
        _.each($('.pd-count').data(), function(v, e) {
            $('.pd-count').removeAttr('data-' + e);
        });

        $('.tile-image-ph + div.tile-footer').css({
            'background-image' : 'none'
        });
    });

    funDaskboard.ajaxGetR_Wallet(function(result) {
        _.has(result, 'success') && $('.r-wallet').html(_.values(result)[0] + ' VND');
        _.each($('.r-wallet').data(), function(v, e) {
            $('.r-wallet').removeAttr('data-' + e);
        });

        $('div.tile-image-r-wallet + div.tile-footer').css({
            'background-image' : 'none'
        });
    });

    funDaskboard.ajaxGetC_Wallet(function(result) {
        _.has(result, 'success') && $('.c-wallet').html(_.values(result)[0] + ' VND');
        _.each($('.c-wallet').data(), function(v, e) {
            $('.r-wallet').removeAttr('data-' + e);
        });

        $('.tile-image-c-wallet + div.tile-footer').css({
            'background-image' : 'none'
        });
    });

});
