<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����ȣ</title>
<script type="text/javascript" src = "/Aeontel/export/js/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function(){
		$("#dong").click(function(){
			var checkType = opener.document.location.href.split("/");
			var dong = $("#InputDong").val();
			var i = 0;
			var parameter ={
				"dong" : dong	
			};
			if( dong == null || dong.replace(/ /gi,"")=="" ){
				alert("��ĭ�Դϴ�. �ٽ� �Է� �Ͽ� �ֽʽÿ�.");
			}
			if( checkType[checkType.length - 1] != "join.jsp"){
				$.ajax({
					type : "POST",
					url : "/ZipCode.do?op=dong",
					data : parameter,
					contenType : "application/son; charset=utf-8",
					dataType : "json",
					beforeSend : function(){
						$("body").css("cursor","wait");
					},
					success : function( data ){
						$("#zipCode option").remove();
						if( data.length == 0 ){
							$("<option></option>").text("-------------------------").attr("value","none")
							.appendTo("#zipCode");
							alert("�˻������ �����ϴ�. �ٽ��ѹ� �˻� �Ͽ� �ֽʽÿ�.");
						}else {
							$("<option></option>").text("-------------------------").attr("value","none")
							.appendTo("#zipCode");
							for( i = 0; i < data.length; i++ ){
								var value = data[i].SIDO+" "+data[i].GUGUN + " " + data[i].DONG;
								$("<option></option>").text(value).attr("value",data[i].zipcode).appendTo("#zipCode");
							}
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n"
								+ "message:" + request.responseText
								+ "\n" + "error:" + error);
					},
					complete: function(){
						$("body").css("cursor","default");
					}
				});
			} else {
				$.ajax({
					type : "POST",
					url : "/ZipCode.do?op=zipCodeDong",
					data : parameter,
					contenType : "application/son; charset=utf-8",
					dataType : "json",
					beforeSend : function(){
						$("body").css("cursor","wait");
					},
					success : function( data ){
						$("#zipCode option").remove();
						$("<option></option>").text("-------------------------").attr("value","none")
						.appendTo("#zipCode");
						if( data.length == 0 ){
							alert("�˻������ �����ϴ�. �ٽ��ѹ� �˻� �Ͽ� �ֽʽÿ�.");
						}else {
							for( i = 0; i < data.length; i++ ){
								var value = data[i].SIDO+" "+data[i].GUGUN + " " + data[i].DONG + data[i].RI + " " + data[i].BLDG + " " + data[i].BUNJI;
								$("<option></option>").text(value).attr("value",data[i].zipcode).appendTo("#zipCode");
							}
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n"
								+ "message:" + request.responseText
								+ "\n" + "error:" + error);
					},
					complete: function(){
						$("body").css("cursor","default");
					}
				});
			}
			
		});
		$("#zipCode").change(function(){
			if( $("#zipCode option:selected").val() == "none"){
				$("#zip").val("");
			} else {
				$("#zip").val($("#zipCode option:selected").val());
			}
		});
		
		$("#input").click(function(){
			var address = $("#zipCode option:selected").text()+" "+ $("#address").val();
			$("#workerZipCode", opener.document).val($("#zip").val());
			$("#workerAddress", opener.document).val(address);			
			window.close();
		});
	});
</script>
</head>
<body>
	<table style="border-color:rgb(227,227,227); padding:0; border-collapse:collapse; border-style:solid; width:250px;" border="1">
	<tr>
	<td colspan="2" style="background-color:rgb(255,246,240);margin:0px;padding:0px;">���� �Է� �Ͻÿ�</td>
	</tr>
	<tr>
	<td><input type="text" id = "InputDong"></td>
	<td><input type="button" value = "�˻�" id = "dong"></td>
	</tr>
	</table>
	<br/>
	�˻����	
	<table style="border-color:rgb(227,227,227); padding:0; border-collapse:collapse; border-style:solid; width:500px;" border="1">
	<tr>
	<td style="background-color:rgb(255,246,240);margin:0px;padding:0px;width:100px;">�ּҸ�</td>
	<td style="width:150px;"><select id="zipCode">
		<option value="none">-------------------------</option>
	</select></td>
	<td style="background-color:rgb(255,246,240);margin:0px;padding:0px;width:80px;" >�����ȣ</td>
	<td><input type = "text" id = "zip"></td>
	</tr>
	<tr>
	<td colspan="4"><input type="text" placeholder="������ �ּҸ� �Է� �Ͻÿ�." id = "address" style="width:500px;"></td>
	</tr>
	</table>
	<table style="width:500px;">
	<tr>
	</tr>
	</table>
	<div>
		���ּ� ����
		<div>
			<select>
				<option></option>
			</select>
		</div>
	</div>
	<input type = "button" value="Ȯ��" id = "input">
	<br/>
	
</body>
</html>