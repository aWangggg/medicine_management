<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/taglibs.jsp"%>
<script type="text/javascript" src="${ctx}/js/easy_validator.pack.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.bgiframe.min.js"></script>
<script type="text/javascript"
	src="${ctx }/resource/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript"
	src="${ctx}/resource/admin/js/ajaxfileupload.js"></script>
<link href="${ctx}/css/validate.css" rel="stylesheet" type="text/css" />
<html>
<head>
<title>信息内容功能</title>
</head>
<body>
	<form id="form1" name="form1" action="" method="post">
		<input type="hidden" value="${param.flag }" name="flag" /> <input
			type="hidden" value="${map.id }" name="id" id="id" />
		<center>
			<table class="mobile" style="width: 95%;">
				<tr class="pageheader">
					<td colspan="2"><strong>信息处理</strong></td>
				</tr>
				<tr height="25">
					<td class="outDetail" style="width: 30%">名称： <label
						style="font-weight: bold; color: red"> </label></td>
					<td class="outDetail2"><input type="text" id="name"
						value="${map.name }" name="name" /></td>
				</tr>
				<tr height="25">
					<td class="outDetail" style="width: 30%">规格： <label
						style="font-weight: bold; color: red"> </label></td>
					<td class="outDetail2"><input type="text" id="gg"
						value="${map.gg }" name="gg" /></td>
				</tr>
				<tr height="25">
					<td class="outDetail" style="width: 30%">单位： <label
						style="font-weight: bold; color: red"> </label></td>
					<td class="outDetail2"><select id="dw" name="dw">
							<option value="盒" ${map.dw=='盒'?'selected':'' }>盒</option>
							<option value="支" ${map.dw=='支'?'selected':'' }>支</option>
							<option value="包" ${map.dw=='包'?'selected':'' }>包</option>
					</select></td>
				</tr>
				<tr height="25">
					<td class="outDetail" style="width: 30%">价格： <label
						style="font-weight: bold; color: red"> </label></td>
					<td class="outDetail2"><input id="money" type="text"
						value="${map.money }" name="money" /></td>
				</tr>
				
				</tr>
				<tr height="25">
					<td class="outDetail" style="width: 30%">数量： <label
						style="font-weight: bold; color: red"> </label></td>
					<td class="outDetail2"><input id="kc" type="text"
						value="${map.kc }" name="kc" /></td>
				</tr>
				<c:if test="${1==1 }"></c:if>
			</table>
		</center>
		<p align="center">
			<br> <input type="button" class="btn" value="保  存"
				onclick="save(this);" /> <input type="button" class="btn"
				value="关  闭" onclick="window.close();" />
		</p>
	</form>
</body>
<script type="text/javascript">
	function save(src) {
		var name = $("#name").val();
		if ($.trim(name) == '') {
			alert('名称不能为空');
			return false;
		}
		var gg = $("#gg").val();
		if ($.trim(gg) == '') {
			alert('规格不能为空');
			return false;
		}
		$.post("editSave.html", $("#form1").serializeArray(), function(result) {
			result = eval("(" + result + ")");
			if (result.status == "true" || result.status == true) {
				alert('成功');
				saveAnd();
			} else {
				alert('保存失败，请重试');
			}
		});
	}
	function triggerUpload(src) {
		$.ajaxFileUpload({
			url : '${ctx}/file/upload.json',
			secureuri : false,
			fileElementId : 'f_file',
			dataType : 'json',
			data : {
				fileloc : 'upload/',
				dir : 'temp'
			},
			success : function(data, status) {
				$("input[name='img']").val(data.data.filepath);
				$("#imgUrlShow").attr("src",
						"${ctx}/" + data.data.filepath + "");
			},
			error : function(data, status, e) {
				alert('文件上传失败');
			}
		});
	}
</script>
</html>
