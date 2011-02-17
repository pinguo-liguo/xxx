<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %> 
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    
    <title><s:text name="interfaceTitle"/></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--> 
		
	<sx:head debug="false" cache="false" compressed="false" />
	
	<link rel="stylesheet" type="text/css" href="./css/interface.css">
  </head>
  <script type="text/javascript" src="./js/openWindow.js"></script>
  
  <script>
    function publish_change_side() {
        dojo.event.topic.publish("change_side");
    }
    function publish_change_operatorID() {
        dojo.event.topic.publish("change_operatorID");
    }
    function publish_change_currentID() {
        dojo.event.topic.publish("change_currentID");        
    }
    function publish_get_WorkstationDescription() {
        dojo.event.topic.publish("get_WorkstationDescription");        
    }    
    function publish_get_itemNr_and_version() {
        dojo.event.topic.publish("get_itemNr_and_version");        
    }
    
    //make sure everything is loaded on startup
    function publish_all() {
    	dojo.event.topic.publish("get_itemNr_and_version");      
    	dojo.event.topic.publish("get_WorkstationDescription");
    	dojo.event.topic.publish("change_side");
     	dojo.event.topic.publish("change_operatorID");
        dojo.event.topic.publish("change_currentID");        
    }
    
    
  </script>
  
  <body onload="publish_all();">  	
  	<div id="content">
		    <table>
			    <tr >			    		    				    
				    <s:form id="frm_ItemNrAndVersion" >
				    <td style="width:3cm;"><s:textfield key="formData.poNo" labelposition="left" cssStyle="width:100%;background-color:orange;" onblur="publish_get_itemNr_and_version();"/></td>						    				    			   	
				    <td><sx:div cssStyle="width:4cm;" href="fillItemList.action" listenTopics="get_itemNr_and_version" formId="frm_ItemNrAndVersion"/></td>					   							    				   	
				   	</s:form>	

				    <s:form id="frm_WorkstationDescription">
				    <td style="width:1.5cm;"><s:textfield key="formData.workstationNr" labelposition="left" cssStyle="width:100%;background-color:orange;" onblur="publish_get_WorkstationDescription();"/></td>				    			   		
				    <td><sx:div cssStyle="width:100%;" href="fillWorkstationDescription.action" listenTopics="get_WorkstationDescription" formId="frm_WorkstationDescription"/></td>					   							    				   	
				   	</s:form>	
				   
				   	<s:form id="frm_side_Id">
				   	<td><sx:div cssStyle="width:100%;" href="changeSide.action" listenTopics="change_side" formId="frm_side_Id" /></td>
				   	</s:form>
				   	
				   	<s:form id="frm_operatorID_Id" >
				   	<td><sx:div cssStyle="width:100%;" href="changeOperatorID.action" labelposition="left" listenTopics="change_operatorID" formId="frm_operatorID_Id" /></td>
				   	</s:form>
					
				    <s:form  action="startPO" >
				    	<td><sx:submit  key="startPO" targets="svgDiv" /></td>					    		
				    </s:form>
				    
				    
				    <td><sx:submit key="poHistory" targets="dummy" onclick="openWindow('openPoInformation.action')" />
				    <sx:submit key="openingPO" targets="dummy" onclick="openWindow('openShowUnconfirmed.action')"/></td>
				    	
			    </tr>
			</table>
			<table border="0" style="height:3%;">
			    <tr>
			    	<s:form>
				    	<td><s:submit key="storeSvgInDB" action="goToStoreSvgInDB"/></td>
				    </s:form>
				    
				    <s:form id="frm_current_Id">
				    <td><s:textfield key="formData.fid" labelposition="left" onblur="publish_change_currentID();"/></td>				   		
				    <td><sx:div cssStyle="width:100%;" labelposition="left" href="fillCurrentFID.action" listenTopics="change_currentID" formId="frm_current_Id"/></td>					   							    				   	
				   	</s:form>				   					   				    
								
					<s:form>									    				    
					    <s:if test="formData.failed">
	    					<td><s:submit key="failure" action="testComplete_Interface" cssStyle="background-color:red"/></td>
						</s:if>
					    <s:else>
	   						<td><s:submit key="passed" action="testComplete_Interface" cssStyle="background-color:green"/></td>
						</s:else>
					</s:form>
					
				    <td><sx:submit key="singleBoardErrList"  targets="dummy" onclick="openWindow('openItemFailureList_ItemFailureList.action')"/></td>
				    <td><sx:submit key="currentPoDetails"  onclick="openWindow('openPoAllTestsOverview_AllTestsOverview.action')"/></td>
					
			    </tr>			
			    
		    </table>
		
	</div>		
	<sx:div id="svgDiv" executeScripts="true">
	<div >
		<script type="text/javascript" src="./js/svgEmbed.js"></script>			
    </div>
    </sx:div>
  </body>
</html>

