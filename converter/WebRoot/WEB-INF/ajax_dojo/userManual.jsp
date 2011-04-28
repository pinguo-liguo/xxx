<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %> 
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title><s:text name="viDocumentMaintenance"/></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/interface.css" >
	
	<s:head />
	<sx:head debug="false" cache="false" compressed="false"/>

  </head>
  
  <script type="text/javascript">
  //alert(opener.document.getElementById("pageLabel.partNo").value);
  //alert(opener.${pageLabel.partNo});
  //${pageLabel.partNo}=opener.${pageLabel.partNo};
	function checkInput(){
		if(document.getElementById("inputPOS").value==""){
		alert("请输入子板位置");
		return false;
		}else if(document.getElementById("inputFailCode").value=="9999"){
		alert("请选择错误代码");
		return false;
		}else{
		return true;
	    }
	}
  </script>

  	
  <body>
     <div>
     <table>
    <s:form action="uploadManual" id="uploadManual" method ="POST" enctype ="multipart/form-data">
     <tr>
		<td><s:textfield labelposition="left" key="pageLabel.partNo"></s:textfield></td>
		<td><s:textfield cssStyle="width:1cm" labelposition="left" key="pageLabel.partAs"></s:textfield></td>
    </tr>
	<tr>
		<td><s:file labelposition="left" key="pageLabel.viDocument"/></td> 
		<td><s:submit cssStyle="width:1.5cm;" key="buttonSave"/></td>
		<td><s:reset value="关闭窗口" onclick="window.close();" align="middle"/></td>
	</tr>

	<tr>
		<td><s:text name="pageLabel.viDocReview"/></td>
	</tr>

	<tr>
		<td><a href="<s:property value="pageLabel.viDocReal"/>" ><s:property value="pageLabel.viDocReview"  />
			</a></td>
		
		<!-- Example 1: simple example -->
		<!--s:updownselect
		list="pageLabel.viDocList"
		name="pageLabel.viDocReview"
		headerKey="-1"
		headerValue="--- Please Order Them Accordingly ---"
		emptyOption="true" 
		multiple="false"
		allowMoveUp="false"
		allowMoveDown="false"
		allowSelectAll="false"
	
	/-->

	</tr>
	</s:form>
	</table>		
	</div>
	<s:iterator></s:iterator>
	<br/>
	<br/>
	说明:<br/>
	1,目检附件将被从I盘上传到服务器上,由于服务器上的文件可能丢失,请保证I盘上文件的正确以作为备份<br/>
	2,上传的目检附件不支持中文文件名(可以上传但无法浏览)<br/>
	3,上传的目检附件不大于2M,仅可以传一个文件(请用office的嵌入功能将其他文件嵌入到一个文档中)<br/>
	
  </body>
</html>
