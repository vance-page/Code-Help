<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>修改密码</title>
    <script>
        //配置后台地址
        var app = {
            'base': '/Public/vendor',
        };
    </script>
    <script src="/Public/vendor/require.js"></script>
    <script src="/Public/vendor/config.js"></script>
    <style>
        .ng-cloak {
            display: none;
        }
    </style>
</head>
<body ng-cloak class="ng-cloak" ng-controller="ctrl" style="padding:0 15px;">

<ul class="breadcrumb row navigation">
    <li><a href="<?php echo U('./welcome');?>"><i class="fa fa-home"></i> Home</a></li>
    <li class="active">Welcome</li>
</ul>
<div class="row">
    <div class="col-sm-12">
        <section class="panel panel-default">
            <header class="panel-heading">修改密码</header>
            <div class="panel-body">
                <form class="form-horizontal" role="form" action="" method="post">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">修改密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="pwd" id="pwd" placeholder="请输入密码" autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">保存</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</div>
<script type="text/javascript">
    require(['css!/Public/css/app.css']);
    require(['util','angular','jquery'],function (angualr,$) {
        angular.module('app', []).controller('ctrl', ['$scope', function ($scope) {

        }]);
        angular.bootstrap(document.getElementsByTagName('body'), ['app']);
    });
</script>

</body>
</html>