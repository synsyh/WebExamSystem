<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Untitled Document</title>
    <!-- Bootstrap -->
    <link href="dist/css/bootstrap.css" rel="stylesheet">
    <link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        function check_radio() {
            var chk;
            var insert;
            var select = document.getElementById('select');
            var fill = document.getElementById('fill');
            var descrip = document.getElementById('descrip');
            var judge = document.getElementById('judge');
            var chkObjs = document.getElementsByName("radio");
            for (var i = 0; i < chkObjs.length; i++) {
                if (chkObjs[i].checked) {
                    chk = chkObjs[i].value;
                    break;
                }
            }
            if (chk == '1') {
                judge.style.display = 'none';
                descrip.style.display = 'none';
                fill.style.display = 'none';
                select.style.display = 'block';
            } else if (chk == '2') {
                judge.style.display = 'none';
                descrip.style.display = 'none';
                fill.style.display = 'block';
                select.style.display = 'none';
            } else if (chk == '3') {
                judge.style.display = 'block';
                descrip.style.display = 'none';
                fill.style.display = 'none';
                select.style.display = 'none';
            } else if (chk == '4') {
                judge.style.display = 'none';
                descrip.style.display = 'block';
                fill.style.display = 'none';
                select.style.display = 'none';
            }
        }
        function addBlank(){
            document.getElementById("fillcontent").value+="(____)";
        }
    </script>
</head>

<body>
<div id="wrapper">
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li>
                <a href="getclass.html">开课</a>
            </li>
            <li>
                <a href="setexam.html">出题</a>
            </li>
            <li>
                <a href="exammaintain.html">题库维护</a>
            </li>
            <li>
                <a href="#">批卷</a>
            </li>
            <li>
                <a href="#">设置</a>
            </li>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->
    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1>出题界面</h1>
                    <p id="demo">这是出题界面</p>
                    <label>请选择添加的题类型</label>
                    <div class="radio">
                        <label>
                            <input type="radio" name="radio" id="radio2" value="1">
                            选择
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="radio" id="radio2" value="2">
                            填空
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="radio" id="radio1" value="3">
                            判断
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="radio" id="radio1" value="4">
                            简答
                        </label>
                    </div>
                    <button class="btn btn-default" onclick="check_radio()">选择</button>
                    <p></p>
                    <div id='select' style="display:none;">
                        <form action="setexam" method="post" role="form">
                            <div class="form-group">
                                <label class="default">请输入问题描述</label>
                                <input type="text" name="content" class="form-control" placeholder="问题描述"/>
                                <label class="default">请输入选项</label>
                                <input type="text" name="option" class="form-control" placeholder="A选项"/>
                                <input type="text" name="option" class="form-control" placeholder="B选项"/>
                                <input type="text" name="option" class="form-control" placeholder="C选项"/>
                                <input type="text" name="option" class="form-control" placeholder="D选项"/>
                                <label>
                                    正确选项是
                                </label>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="answer" value="1"/>A
                                    </label>
                                    <label>
                                        <input type="checkbox" name="answer" value="2"/>B
                                    </label>
                                    <label>
                                        <input type="checkbox" name="answer" value="3"/>C
                                    </label>
                                    <label>
                                        <input type="checkbox" name="answer" value="4"/>D
                                    </label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-default">提交</button>
                        </form>
                    </div>
                    <div id='fill' style="display:block">
                        <form action="setexam" method="post" role="form">
                            <label>请输入问题描述</label>
                            <div class="input-group col-lg-6">
                                <span class="input-group-btn">
                                    <button class="btn btn-info input-group" type="button" onclick="return addBlank()">添加空</button>
                                </span>
                                <input id="fillcontent" type="text" name="content" class="input-group form-control" placeholder="问题描述"/>
                            </div>
                            <p></p>
                            <button type="submit" class="btn btn-default">填空题提交</button>
                        </form>
                    </div>
                    <div id='judge' style="display:none">
                        <form role="form">
                            <label>请输入问题描述</label>

                            <label></label>
                            <input type="text" class="form-control" placeholder="请输入问题描述"/>

                            <button class="btn btn-default">正确</button>
                            <button class="btn btn-default">错误</button>
                        </form>
                        <button class="btn btn-default">提交</button>
                    </div>
                    <div id="descrip" style="display:none">
                        <form class="form-group">
                            <label>请输入问题描述</label>
                            <input type="text" class="form-control" placeholder="请输入问题描述"/>
                        </form>
                        <button class="btn btn-default">提交</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="dist/js/jquery-1.11.2.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="dist/js/bootstrap.js"></script>
</body>

</html>
