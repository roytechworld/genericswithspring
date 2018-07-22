<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Spring Crud</title>
	
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function()		
	{
		
		$("#save").click(function()
	    {
	   
	    var value="";
			$.ajax({
			url:"save?name="+$("#studentname").val()+"&address="+$("#address").val(),
			type: "post",
			data: value,
			cache:false,
			success:function(data)
			{
				
				$("#s").html(data);
			}
					
			})
			
	    });
		
		
	
		
		
		

	});
	
	
	function callme(stid,stname,id)
	{
		
		alert("Student name "+stname +" Student id "+stid);
		
		
	}
	</script>
	
</head>


<body>
<h1>
	A crud example  
</h1>

<table>

<tr>
<td>Student Name </td>
<td><input id="studentname" type="text" value="" />
</tr>

<tr>
<td>Address</td>
<td><input type="text" id="address" value="" />
</td>
</tr>

<tr>
<td>
<button id="save">Save it</button>
</td>
</tr>


</table>

<div id="s">
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
 
 <a href="#" id="h${loop.index+1}" onclick="callme('${stdentlistValue.stid}','${stdentlistValue.name}','${loop.index+1}')">click me</a>
                      
</td>

<td>
${stdentlistValue.address }
</td>


</c:forEach>



</table>

</div>


</body>
</html>
