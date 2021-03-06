<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<SCRIPT language="javascript">
function viewmatrix() {
    if (document.getElementById('matrix_overview_hardware').selectedIndex == 0) {
         alert("Invalid selection!");
         return;
    }
    
    document.getElementById('matrix_overview_action').value="list_hardware";
    document.getElementById('matrix_overview').submit();    
}
</SCRIPT>  

<s:form theme="simple" action="matrix_overview.action" method="post">
   
   <s:if test="%{warningMessage != null}">
       <img src="images/warn.png">&nbsp;<div class="warn_message"><s:property value="warningMessage"/></div>
   </s:if>
   
   <s:else>   
       <table class="ConfigDataTable" align="center" width="30%">
           <thead>
            <tr><th align="center">Select Matrix</th></tr>
        </thead>
           <tbody>
            <tr><td align="center"><img src="images/spacer.gif" width="1" height="5"/></td></tr>
            <tr><td align="center"><s:select onchange="viewmatrix();" label="Matrix Hardware" headerKey="-1" headerValue="-- select matrix --" list="hardwares" name="hardware"/></td></tr>
            <tr><td align="center"><img src="images/spacer.gif" width="1" height="5"/></td></tr>
        </tbody>
    </table>
     <s:hidden name="action" value=""/>
    </s:else>
</s:form>