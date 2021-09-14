<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增业务</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

</head>
<body>
    <h1>新增业务</h1>
    <form action="" method="post">
    业务类型： <select id="typeId" name="typeId">
        <option value="" selected="">请选择</option>
    </select>
    <br>
    排队号：<input type="text" name="" /> <br>
        备注信息：<textarea name="" cols="30" rows="10"></textarea>
        <br>
        <input type="submit" value="确认增加">

    </form>
<script>
            //发送ajax 得到数据后渲染到 select 框中
            //异步 刷新 layui 的下拉框
                $.ajax({
                    url: '/type/selectAll',
                    type: 'post',
                    dataType: 'json',
                    success: function (res) {
                        console.log(res);
                        var select = $("#typeId")
                        $.each(res.data, function (index, item) {
                            select.append(new Option(item.typeName,item.id));  //在下拉菜单里添加元素
                        });
                    }
                });

</script>
</body>
</html>
