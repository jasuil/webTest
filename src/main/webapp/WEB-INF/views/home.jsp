<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script src="/resources/jquery321.js"></script>
	<!-- include libraries(jQuery, bootstrap) -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>

<!-- include summernote css/js-->
<link href="/resources/snote/summernote.css" rel="stylesheet">
<script src="/resources/snote/summernote.js"></script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<input type='button' id='button' value='click'/>
<div id='gets'></div>

<!-- list parameter S -->
<input type="text" name="name1" value="jsi"/>
<input type="text" name="name2" value="jasuil"/>
<input type="text" name="phone1" value="010"/>
<input type="text" name="phone2" value="6666666"/>
<!-- list parameter E -->
<div id="summernote">Hello Summernote</div>

<script>
$(document).ready(function() {
	  $('#summernote').summernote();
	});
	
$('#button').on('click',function(){
	
	var dataList = new Array();
	var datas = new Object();
	datas.name=$('[name="name1"]').val();
	datas.phone=$('[name="phone1"]').val();
	dataList.push(datas);
	
	datas = new Object();
	datas.name=$('[name="name2"]').val();
	datas.phone=$('[name="phone2"]').val();
	dataList.push(datas);
	
	var dataListObj = {list:dataList};
	
	
	var datau = $('form[name="formData"]').serialize();
	var lists = {name:'jasuil',phone:'1212',list:[{name:"fd",phone:'1212'},{name:"성일짱",phone:'12223'}]};
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json' 
			},
        url:'/toss',
        //data: JSON.stringify({name:'jasuil',phone:'1212',list:[{name:"fd",phone:'1212'},{name:"성일짱",phone:'12223'}]}),
        //above data modified with {"name":"jasuil","phone":"1212","list":[{"name":"fd","phone":"1212"},{"name":"성일짱","phone":"12223"}]}
        data: JSON.stringify(dataListObj),
        dataType:'text',
        method: "post",
        success:function(data){
            $('#gets').text(data);
        }
    })
});
</script>
</body>
</html>
