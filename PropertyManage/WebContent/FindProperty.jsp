<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>企业资产管理系统</title>
<script type="text/javascript">
function checkForm(){
	var id1=document.getElementById("1").value;
	if (id1==null||id1==''){
			alert("搜索关键词不能为空！");
			return false;
	}
	
	}
</script>
<style>
    .bg{
        background:url("image/bg.jpeg") no-repeat;
        background-size:cover;
    }
    .box{
        padding:40px;
        width:60%;
        margin-left:25%;
        font-size:30px;
    }
    
form.style {
    max-width: 500px;
    padding: 30px 30px 20px 30px;
    font: 12px Arial, Helvetica, sans-serif;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    background-color:rgba(255,255,255,0.6);
}
form.style h1 {
    font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
    padding: 20px 0px 20px 40px;
    display: block;
    margin: -30px -30px 10px -30px;
    color: #FFF;
    background: #9DC45F;
    text-shadow: 1px 1px 1px #949494;
    border-radius: 5px 5px 0px 0px;
    -webkit-border-radius: 5px 5px 0px 0px;
    -moz-border-radius: 5px 5px 0px 0px;
    border-bottom:1px solid #89AF4C;
}
form.style h1>span {
    display: block;
    font-size: 15px;
    color: #FFF;
}
form.style label {
    font-size:15px;
    margin: 0px 0px 5px;
}
form.style input[type="text"], .smart-green input[type="email"], .smart-green input[type="password"], .smart-green select {
    color: #555;
    height: 30px;
    line-height:15px;
    width: 100%;
    padding: 0px 0px 0px 10px;
    margin-top: 10px;
    border: 1px solid #E5E5E5;
    background: #FBFBFB;
    outline: 0;
    -webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
    box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
    font: normal 14px/14px Arial, Helvetica, sans-serif;
}
form.style select {
    background: url('down-arrow.png') no-repeat right, -moz-linear-gradient(top, #FBFBFB 0%, #E9E9E9 100%);
    background: url('down-arrow.png') no-repeat right, -webkit-gradient(linear, left top, left bottom, color-stop(0%,#FBFBFB), color-stop(100%,#E9E9E9));
    appearance:none;
    -webkit-appearance:none;
    -moz-appearance: none;
    text-indent: 0.01px;
    text-overflow: '';
    margin-top: 10px;
    width:100%;
    height:30px;
}
form.style .button {
    background-color: #9DC45F;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-border-radius: 5px;
    border: none;
    margin:10px 50px;
    padding: 10px 25px 10px 25px;
    color: #FFF;
    text-shadow: 1px 1px 1px #949494;
}
form.style .button:hover {
    background-color:#80A24A;
}

table.style {
	font-family: verdana,arial,sans-serif;
	font-size:15px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.style th {
	background:#9DC45F;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
table.style td {
	background:#dcddc0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
</style>
</head>
<body class="bg">
<jsp:include page="AdminHeader.jsp" />
<jsp:include page="AdminIndex.jsp" />
<div class="box">
	<form class="style" action="FindProperty" method="post" onsubmit="return checkForm();">
	<td><label>搜索资产设备</label></td>
    <td width="350px"><input id="1" name="guanjianci" type="text" placeholder="请在此处输入关键词"></td>
    
		<input class="button" type="submit" value="提交">
	</form>
	
	
	<table class="style">
    	<tr>
    	<th>设备编号</th>
    	<th>设备名称</th>
    	<th>品牌</th>
    	<th>型号</th>
    	<th>规格</th>
    	<th>购买日期</th>
    	<th>状态</th>
    	<th>出借历史</th>
    	</tr>
  	 <c:forEach var="property" items = "${propertys}" varStatus="Number">
  	 <tr>
    	<th> ${property.pid}</th>
    	<th> ${property.propertyname}</th>
    	<th> ${property.brand}</th>
    	<th> ${property.modelnumber}</th>
  		<th> ${property.specification}</th>
   		<th> ${property.date}</th>
    	<th> ${property.status}</th>
    	<th> <a href="PropertyHistory?propertyid=${property.pid}">出借历史</a></th>

   	</c:forEach>
  	  </table>
    
</div>

<jsp:include page="UserFooter.jsp" />
</body>
</html>