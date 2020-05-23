<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:63:"/data/www/y5g/public/../application/index/view/item/income.html";i:1590204189;s:48:"/data/www/y5g/application/index/view/layout.html";i:1589513789;}*/ ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>库存管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/static/lib/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/static/lib/layuiadmin/style/admin.css" media="all">

    <script>
        /^http(s*):\/\//.test(location.href) || alert('请先部署到 localhost 下再访问');
    </script>
    <script src="/static/lib/layuiadmin/layui/layui.js"></script>
    <script>
        layui.config({
            base: '/static/lib/layuiadmin/' //静态资源所在路径
        }).extend({
            index: 'lib/index' //主入口模块
        }).use('index');
    </script>
</head>

    <div class="layui-fluid">
        <div class="layui-card">
          <div class="layui-form layui-card-header layuiadmin-card-header-auto">
            <div class="layui-form-item">
              <div class="layui-inline">
                  <select name="user_id" id='user_id' lay-filter="user_id">
                    <option value=""> - 入库人 - </option>
                    <?php foreach($users as $user): ?>
                    <option value="<?php echo $user['id']; ?>" <?php echo \think\Request::instance()->get('user_id')==$user['id']?'selected' :''; ?>><?php echo $user['username']; ?></opion>
                    <?php endforeach; ?>
                  </select>
              </div>
              <div class="layui-inline">
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="进货日期" name="date" type="text" id="date" autocomplete="off">
                </div>
              </div>
              <div class="layui-inline">
                <select id="name_id" name="name_id" lay-filter="name_id">
                    <option value=""> - 名称 - </option>
                    <?php foreach($names as $name): ?>
                    <option value="<?php echo $name['id']; ?>" <?php echo \think\Request::instance()->get('name_id')==$name['id']?'selected' :''; ?>><?php echo $name['data']; ?></option>
                    <?php endforeach; ?>
                </select>
              </div>
              <div class="layui-inline">
                  <select name="channel_id">
                      <option value=""> - 进货渠道 - </option>
                      <?php foreach($channels as $channel): ?>
                      <option value="<?php echo $channel['id']; ?>" <?php echo \think\Request::instance()->get('channel_id')==$channel['id']?'selected' :''; ?>><?php echo $channel['data']; ?></option>
                      <?php endforeach; ?>
                  </select>
              </div>
                <div class="layui-inline">
                    <button class="layui-btn layuiadmin-btn-list" lay-submit lay-filter="filter-search">
                      <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
                    </button>
                  </div>
            </div>
          </div>
          <!-- 表格 -->
          <div class="layui-card-body">
            <table id="table-list" lay-filter="table-list"></table>
          </div>
        </div>
      </div>
      
      <script>
        layui.use(['laydate', 'index', 'contlist', 'table', 'jquery'], function(){
            var table = layui.table
            var form = layui.form
            var jquery = layui.jquery
            var $ = layui.jquery
            var laydate = layui.laydate
            var s_user_id = '<?php echo $userId;?>';

            //执行一个laydate实例
            laydate.render({
                elem: '#date' //指定元素
            });
            
            table.render({
                elem: '#table-list'
                ,url: '/index/item/incomeList' //数据接口
                ,parseData: function(res){ //res 即为原始返回的数据
                    return {
                    "code": 0, //解析接口状态
                    "msg": res.message, //解析提示文本
                    "count": res.total, //解析数据长度
                    "data": res.data //解析数据列表
                    };
                },page: true //开启分页
                ,cols: [[ //表头
                    {field: 'id', title: 'ID', minWidth:60, sort: true, fixed: 'left'}
                    ,{field: 'status_name', title: '审核状态', minWidth:120,templet: function(d){
                        return d.status_name;
                    }}
                    ,{field: 'itemName', title: '名称', minWidth:120,templet: function(d){
                        if(d.item != null && d.item.itemName != null){return d.item.itemName.data} else {return ''}
                    }} 
                    ,{field: 'itemNetwork', title: '网络模式', minWidth: 120,templet: function(d){
                        if(d.item != null && d.item.itemNetwork != null){return d.item.itemNetwork.data} else {return ''}
                    }}
                    ,{field: 'itemFeature', title: '配置', minWidth: 120,templet: function(d){
                        if(d.item != null && d.item.itemFeature != null){return d.item.itemFeature.data} else {return ''}
                    }}
                    ,{field: 'itemAppearance', title: '外观', minWidth: 120,templet: function(d){
                        if(d.item != null && d.item.itemAppearance != null){return d.item.itemAppearance.data} else {return ''}
                    }}
                    ,{field: 'number', title: '序列号', minWidth: 150,templet: function(d){
                        return '<a target="_blank" href="https://checkcoverage.apple.com/cn/zh/?sn=' + d.item.number + '"><span style="color:coral;cursor: pointer;">' + d.item.number +'</span></a>';
                    }}
                    ,{field: 'itemEdition', title: '版本', minWidth: 120,templet: function(d){
                        if(d.item != null && d.item.itemEdition != null){return d.item.itemEdition.data} else {return ''}
                    }}
                    ,{field: 'price', title: '进价', minWidth: 120, sort: true,templet: function(d){
                        return (d.item.price*1).toFixed(2);
                    }}
                    ,{field: 'itemChannel', title: '进货渠道', minWidth: 120, sort: true,templet: function(d){
                      if(d.item != null && d.item.itemChannel != null){return d.item.itemChannel.data} else {return ''}
                    }}
                    ,{field: 'date', title: '入库人', minWidth:80,templet: function(d){
                        return d.createUser.username;
                    }}
                    ,{field: 'itemCategory', title: '入库时间', minWidth:120,templet: function(d){
                        return d.create_time;
                    }}
                    ,{fixed: 'right', title: '操作', minWidth: 120, sort: true,templet: function(d){
                      if (d.create_user_id == s_user_id) {
                        return '<a class="layui-btn layui-btn-sm" onclick="edit(this,' + d.id + ')" data-value="1" data-href="/index/item/addIncome?id=' + d.id + '">修改</a>';
                      } else {
                        return ''
                      }
                    }}
                ]]
            });
    
            //监听搜索
            form.on('submit(filter-search)', function(data){
              var field = data.field;console.log()
              //执行重载
              table.reload('table-list', {
                where: field,
                page: {
                    curr: 1 //重新从第 1 页开始
                }
              });
            });
    
            layui.$('.layui-btn.layuiadmin-btn-list').on('click', function(){
              var type = layui.$(this).data('type');
              active[type] ? active[type].call(this) : '';
            });
    
        });

        //修改
        function edit(obj,id) {
          layer.open({
            type: 2
            ,title: '修改'
            ,content:  [layui.$(obj).data('href'), 'no']
            ,maxmin: true
            ,area: ['80%', '50%'],
            success: function(layero, index) {
                layer.iframeAuto(index);
            },
          });
        }
  
      </script>
</html>