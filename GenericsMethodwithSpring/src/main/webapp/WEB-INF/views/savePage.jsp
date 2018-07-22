<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<table width="100%" border="1">
<tr>

<td>
Serial No 
</td>

<td>

Student Name


</td>

<td>
Address
</td>




<c:forEach var="stdentlistValue" varStatus="loop" items="${stlist}">

<tr>
<td>
${loop.index+1}
</td>
<td>
          
 <c:url var="studentinfo" value="/studentinfo" >
 
 <c:param name="stid" value="${stdentlistValue.stid}"/>
 <c:param name="stname" value="${stdentlistValue.name}"/>
 
 </c:url>
 
 <a href='<c:out value="${studentinfo}"></c:out>'>${stdentlistValue.name }</a>
                      
</td>

<td>
${stdentlistValue.address }
</td>


</c:forEach>



</table>