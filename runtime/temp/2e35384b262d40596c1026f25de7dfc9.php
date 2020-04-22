<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:61:"/data/www/y5g/public/../application/index/view/log/index.html";i:1574522255;s:48:"/data/www/y5g/application/index/view/layout.html";i:1577343457;}*/ ?>
<!DOCTYPE html>
<html lang="en" style="height:100%">
<head>

    <meta charset="utf-8">
    <title>库存管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="http://fonts.googleapis.com/css?family=Oxygen|Marck+Script" rel="stylesheet" type="text/css">
    <link href="/static/css/bootstrap.css" rel="stylesheet">
    <link href="/static/css/font-awesome.css" rel="stylesheet">
    <link href="/static/css/admin.css" rel="stylesheet">
    <link href="/static/css/jquery-192custom.min.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body style="height:100%">

<div class="container-fluid " style="padding: 0px;height:100%">
    <div class="row" style="height:100%">
        <div class="span2" style="width: 9.3%;background: #484646;height:100%">
            <div class="main-left-col" style="border-right: 0px solid #F1F1F1; ">
                <h1><i class="icon-large"></i> <img src="/bg.png"></h1>
                <ul class="side-nav">
                    <li><a href="<?php echo url('/index/statistics/index'); ?>"><i class="icon-home"></i>库存主页</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#item-dropdown" href="#"><i class="icon-th"></i> 库存查询 <b class="caret"></b></a>
                        <ul id="item-dropdown" class="collapse">
                            <li><a href="<?php echo url('item/inventory'); ?>">在库查询</a></li>
                           
                            <li><a href="<?php echo url('item/search'); ?>">综合查询</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#item-income-dropdown" href="#"><i class="icon-share-alt"></i> 产品入库 <b class="caret"></b></a>
                        <ul id="item-income-dropdown" class="collapse">
                            <li><a href="<?php echo url('item/addIncome'); ?>">采购入库</a></li>
                            <li><a href="<?php echo url('item/addIncome2'); ?>">批量入库</a></li>
                            <li><a href="<?php echo url('item/income'); ?>">入库待核</a></li>
                            <li><a href="<?php echo url('item/returnIncome'); ?>">退货入库</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#item-outgo-dropdown" href="#"><i class="icon-arrow-left"></i> 产品出库 <b class="caret"></b></a>
                        <ul id="item-outgo-dropdown" class="collapse">
                            <li><a href="<?php echo url('item/outgo'); ?>">销售出库</a></li>
                            <li><a href="<?php echo url('item/specialOutgo'); ?>">维修登记</a></li>
                           <!--  <li><a href="<?php echo url('item/specialOutgo2'); ?>">仓库盘点</a></li>!-->
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#examine-dropdown" href="#"><i class="icon-check"></i> 操作审核 <b class="caret"></b></a>
                        <ul id="examine-dropdown" class="collapse">
                            <li><a href="<?php echo url('item/incomeAgree'); ?>">入库审核</a></li>
                            <li><a href="<?php echo url('item/outgoAgree'); ?>">出库审核</a></li>
                        </ul>
                    </li>
                    <!-- <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#statistics-dropdown" href="#"><i class="icon-bar-chart"></i> 统计功能 <b class="caret"></b></a>
                        <ul id="statistics-dropdown" class="collapse">
                            <li><a href="<?php echo url('/index/statistics/income'); ?>">进货统计</a></li>
                            <li><a href="<?php echo url('/index/statistics/profit'); ?>">利润统计</a></li>
                        </ul>
                    </li> -->
               <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#statistics-dropdown" href="#"><i class="icon-bar-chart"></i> 统计功能 <b class="caret"></b></a>
                        <ul id="statistics-dropdown" class="collapse">
                            <li><a href="<?php echo url('/index/statistics/index'); ?>">30天统计</a></li>                                                                         
                             <li><a href="<?php echo url('/index/statistics/profit'); ?>">数据统计</a></li>
                             </ul>
                    </li>

                               <li><a href="<?php echo url('item/specialOutgo2'); ?>"><i class="icon-check"></i>仓库盘点</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#settings-dropdown" href="#"><i class="icon-cogs"></i> 基础设置 <b class="caret"></b></a>
                        <ul id="settings-dropdown" class="collapse">
                            <li><a href="<?php echo url('setting/category'); ?>">产品类别</a></li>
                            <li><a href="<?php echo url('setting/name'); ?>">产品名称</a></li>
                           <li><a href="<?php echo url('setting/type'); ?>">网络型号</a></li>
                            <li><a href="<?php echo url('setting/feature'); ?>">产品配置</a></li>
                            <li><a href="<?php echo url('setting/appearance'); ?>">产品外观</a></li>
                            <li><a href="<?php echo url('setting/edition'); ?>">产品版本</a></li>
                            <li><a href="<?php echo url('setting/incomeChannel'); ?>">渠道录入</a></li>
                            <!-- <li><a href="<?php echo url('setting/outgoChannel'); ?>">出货途径</a></li> -->
                            <!-- <li><a href="<?php echo url('setting/network'); ?>">网络模式录入</a></li> -->
                            <li><a href="<?php echo url('setting/special'); ?>">特殊修改</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="collapse" data-target="#members-dropdown" href="#"><i class="icon-group"></i> 角色管理 <b class="caret"></b></a>
                        <ul id="members-dropdown" class="collapse">
                            <li><a href="<?php echo url('members/add'); ?>">添加账号</a></li>
                            <li><a href="<?php echo url('members/updatePwd'); ?>">密码修改</a></li>
                            <li><a href="<?php echo url('members/updateAccess'); ?>">权限修改</a></li>
                        </ul>
                    </li>
                    <li><a href="<?php echo url('/index/log/index'); ?>"><i class="icon-book"></i> 系统日志 </a></li>
                </ul>

            </div> <!-- end main-left-col -->

        </div> <!-- end span2 -->

        <div class="span10" style="width: 82%;    margin-left: 2%;height:100%">

            <div class="secondary-masthead span12">

                <ul class="nav nav-pills pull-right">
                    <li>
                        <a href="<?php echo url('index/index/index'); ?>"><i class="icon-globe"></i> 首页</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-user"></i> <?php echo think\Session::get('user_name');?><b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo url('logout'); ?>">登出</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="breadcrumb">
                    <a href="<?php echo url('index/index/index'); ?>">库存系统</a>
                    <?php echo isset($breadcrumb) && !empty($breadcrumb) ? '/ <a href="#">'.$breadcrumb.'</a>' : '';?>
                </ul>

            </div>


            <div class="main-area dashboard">
                
<div class="row">

    <div class="">

        <div class="span12">

            <form class="form-inline" method="get">
                <label for="start_date">开始日期
                    <input type="text" class="span2 input-xlarge" id="start_date"  name="start_date" value="" autocomplete="off">
                </label>

                <label for="end_date">结束日期
                    <input type="text" class="span2 input-xlarge" id="end_date"  name="end_date" value="" autocomplete="off">
                </label>
                <select class="span2" name="user_id">
                    <option value="0"> - 操作人 - </option>
                    <?php foreach($users as $user): ?>
                    <option value="<?php echo $user['id']; ?>" <?php echo \think\Request::instance()->get('user_id')==$user['id']?'selected' :''; ?>><?php echo $user['username']; ?></option>
                    <?php endforeach; ?>
                </select>
                <select class="span2" name="action">
                    <option value="0"> - 操作菜单 - </option>
                    <?php foreach($actions as $action): ?>
                    <option value="<?php echo $action; ?>" <?php echo \think\Request::instance()->get('action')==$action?'selected' :''; ?>><?php echo $action; ?></option>
                    <?php endforeach; ?>
                </select>
                <select class="span2" name="response">
                    <option value="0"> - 操作结果 - </option>
                    <?php foreach($responses as $key => $response): ?>
                    <option value="<?php echo $key; ?>" <?php echo \think\Request::instance()->get('response')==$key?'selected' :''; ?>><?php echo $response; ?></option>
                    <?php endforeach; ?>
                </select>
                <button type="submit" class="btn btn-primary">搜索</button>
            </form>
        </div>

        <div class="row">

            <div class="span12 listing-buttons">

                <!--<button class="btn btn-info">Action</button>-->

                <!--<button class="btn btn-success">Action</button>-->

                <!--<button class="btn btn-primary"  data-toggle="modal" href="#addItem" >录入</button>-->

            </div>

            <div class="span12">

                <!--<div class="page-header">-->
                <!--<div class="btn-group pull-right">-->
                <!--<button class="btn dropdown-toggle" data-toggle="dropdown">-->
                <!--<i class="icon-download-alt"></i> Export-->
                <!--<span class="caret"></span>-->
                <!--</button>-->
                <!--<ul class="dropdown-menu">-->
                <!--<li><a href="">CSV</a></li>-->
                <!--<li><a href="">Excel</a></li>-->
                <!--<li><a href="">PDF</a></li>-->
                <!--</ul>-->
                <!--</div>-->
                <!--<h2>Listings</h2>-->
                <!--</div>-->
                <h4 class="span12">总条数：<?php echo $lists->total(); ?></h4>
                <table class="orders-table table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>操作时间</th>
                        <th>操作人</th>
                        <th>操作菜单</th>
                        <th>操作内容</th>
                        <th>操作结果</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!--<tr>-->
                    <!--<td><a href="form.html">Listing title</a> <span class="label label-info">Item Status</span><br /><span class="meta">Added Today</span></td>-->
                    <!--<td class="actions">-->
                    <!--<a class="btn btn-small btn-danger" data-toggle="modal" href="#removeItem">Remove</a>-->
                    <!--<a class="btn btn-small btn-primary" href="form.html">Edit</a>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!--<tr>-->
                    <!--<td><a href="form.html">Listing title</a> <span class="label label-warning">Item Status</span><br /><span class="meta">Added Today</span></td>-->
                    <!--<td class="actions">-->
                    <!--<a class="btn btn-small btn-danger" data-toggle="modal" href="#removeItem">Remove</a>-->
                    <!--<a class="btn btn-small btn-primary" href="form.html">Edit</a>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!--<tr>-->
                    <!--<td><a href="form.html">Listing title</a> <span class="label label-important">Item Status</span><br /><span class="meta">Added Today</span></td>-->
                    <!--<td class="actions">-->
                    <!--<a class="btn btn-small btn-danger" data-toggle="modal" href="#removeItem">Remove</a>-->
                    <!--<a class="btn btn-small btn-primary" href="form.html">Edit</a>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!--<tr>-->
                    <!--<td><a href="form.html">Listing title</a> <span class="label label-inverse">Item Status</span><br /><span class="meta">Added Today</span></td>-->
                    <!--<td class="actions">-->
                    <!--<a class="btn btn-small btn-danger" data-toggle="modal" href="#removeItem">Remove</a>-->
                    <!--<a class="btn btn-small btn-primary" href="form.html">Edit</a>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!--<tr>-->
                    <!--<td><a href="form.html">Listing title</a> <span class="label label-success">Item Status</span><br /><span class="meta">Added Today</span></td>-->
                    <!--<td class="actions">-->
                    <!--<a class="btn btn-small btn-danger" data-toggle="modal" href="#removeItem">Remove</a>-->
                    <!--<a class="btn btn-small btn-primary" href="form.html">Edit</a>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!--<tr>-->
                    <!--<td><a href="form.html">Listing title</a> <span class="label">Item Status</span><br /><span class="meta">Added Today</span></td>-->
                    <!--<td class="actions">-->
                    <!--<a class="btn btn-small btn-danger" data-toggle="modal" href="#removeItem">Remove</a>-->
                    <!--<a class="btn btn-small btn-primary" href="form.html">Edit</a>-->
                    <!--</td>-->
                    <!--</tr>-->

                    <?php if(is_array($lists) || $lists instanceof \think\Collection || $lists instanceof \think\Paginator): $i = 0; $__LIST__ = $lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$temp): $mod = ($i % 2 );++$i;?>
                    <tr>
                        <td><span><?php echo $temp['id']; ?></span></td>
                        <th><span><?php echo $temp['create_time']; ?></span></th>
                        <th><span><?php echo $temp['user']['username']; ?></span></th>
                        <th><span><?php echo $temp['action']; ?></span></th>
                        <th><span><?php echo $temp['request']; ?></span></th>
                        <th><span><?php echo $temp['response']; ?></span></th>
                    </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    </tbody>
                </table>
            </div>
            <div class="pull-right">
                <?php echo $lists->render(); ?>
            </div>
        </div>

        <!--<div class="span5">-->

        <!--<div class="pagination pull-left">-->
        <!--<ul>-->
        <!--<li><a href="#">Prev</a></li>-->
        <!--<li class="active">-->
        <!--<a href="#">1</a>-->
        <!--</li>-->
        <!--<li><a href="#">2</a></li>-->
        <!--<li><a href="#">3</a></li>-->
        <!--<li><a href="#">4</a></li>-->
        <!--<li><a href="#">Next</a></li>-->
        <!--</ul>-->
        <!--</div>-->

        <!--</div>-->

        <!--<div class="span5 listing-buttons pull-right">-->

        <!--<button class="btn btn-info">Action</button>-->

        <!--<button class="btn btn-success">Action</button>-->

        <!--<button class="btn btn-primary">Add New Item</button>-->

        <!--</div>-->

    </div>
</div>
<script src="/static/js/jquery-1.8.3.js"></script>
<script>
    $(function () {

        var startDate = "<?php echo $start_date;?>";
        var endDate = "<?php echo $end_date;?>";

        $.datepicker.regional['zh-CN'] = {
            closeText: '关闭',
            prevText: '<上月',
            nextText: '下月>',
            currentText: '今天',
            monthNames: ['一月', '二月', '三月', '四月', '五月', '六月',
                '七月', '八月', '九月', '十月', '十一月', '十二月'],
            monthNamesShort: ['一', '二', '三', '四', '五', '六',
                '七', '八', '九', '十', '十一', '十二'],
            dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
            dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
            dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
            weekHeader: '周',
            dateFormat: 'yy-mm-dd',
            firstDay: 1,
            isRTL: false,
            showMonthAfterYear: true,
            yearSuffix: '年'
        };

        $.datepicker.setDefaults( $.datepicker.regional[ "zh-CN" ] );

        $("#start_date, #end_date").datepicker({
            dateFormat: "yy-mm-dd",
            todayHighlight: false,
            // minDate: 0,
            // maxDate: "+2D"
        });

        $('#start_date').datepicker("setDate", startDate);
        $('#end_date').datepicker("setDate", endDate);
    })
</script>
            </div>

        </div> <!-- end span10 -->

    </div> <!-- end row -->

</div> <!-- end container -->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/static/js/jquery.min.js"></script>
<script src="/static/js/bootstrap.js"></script>
<script src="/static/js/excanvas.min.js"></script>
<!-- <script src="/static/js/jquery.flot.min.js"></script> -->
<!-- <script src="/static/js/jquery.flot.resize.js"></script> -->
<script src="/static/js/jquery-192custom.min.js"></script>
<script type="text/javascript">
    // $(function () {
    //     var d1 = [];
    //     d1.push([0, 32]);
    //     d1.push([1, 30]);
    //     d1.push([2, 24]);
    //     d1.push([3, 17]);
    //     d1.push([4, 11]);
    //     d1.push([5, 25]);
    //     d1.push([6, 28]);
    //     d1.push([7, 36]);
    //     d1.push([8, 44]);
    //     d1.push([9, 52]);
    //     d1.push([10, 53]);
    //     d1.push([11, 50]);
    //     d1.push([12, 45]);
    //     d1.push([13, 42]);
    //     d1.push([14, 40]);
    //     d1.push([15, 36]);
    //     d1.push([16, 34]);
    //     d1.push([17, 24]);
    //     d1.push([18, 17]);
    //     d1.push([19, 17]);
    //     d1.push([20, 20]);
    //     d1.push([21, 28]);
    //     d1.push([22, 36]);
    //     d1.push([23, 38]);

    //     // $.plot($("#placeholder"), [ d1 ], { grid: { backgroundColor: 'white', color: '#999', borderWidth: 1, borderColor: '#DDD' }, colors: ["#FC6B0A"], series: { lines: { show: true, fill: true, fillColor: "rgba(253,108,11,0.4)" } } });
    // });
</script>


</body>
</html>