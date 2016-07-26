<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<c:import url="header.jsp">
	<c:param name="title" value="View Image"></c:param>
</c:import>

<center>

	<!-- Varianta 1 : definice JDBC spojeni je v Tomcat / context.xml
		<Resource name="jdbc/webshopDB" auth="Container" type="javax.sql.DataSource" maxActive="100" maxIdle="30" maxWait="10000" 
		username="root" password="" driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/webshop"/>
	<sql:setDataSource var="ds" dataSource="jdbc/webshopDB" />	-->
	
	<!-- Varianta 2 : definice v jsp / localhost 
		<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
     	url="jdbc:mysql://localhost:3306/webshop" user="root"  password="katerina" /> -->
    
    <!-- Varianta 3 : definice v jsp / cloud -->
    	<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
     	url="jdbc:mysql://wh19.farma.gigaserver.cz:3306/vancura_cz_" user="vancura_cz"  password="katerina" />
	
	<sql:transaction dataSource="${ds}">

		<sql:query sql="select * from demo_jstl_images where id=?" var="result">
			<sql:param>${param.image_id}</sql:param>
		</sql:query>

		
		<c:set scope="page" var="image" value="${result.rows[0]}"></c:set>
		<c:set scope="page" var="image_name" value="${image.name}" />
		<c:set scope="page" var="average_ranking" value="${image.average_ranking}" />

		<%-- if rated --%>
		<c:if test='${param.action == "rate"}'>
			<c:set scope="page" var="newRating" value="${(image.average_ranking * image.rankings + param.rating)/(image.rankings + 1)}" />

			<c:set scope="page" var="average_ranking" value="${newRating}" />

			<sql:update sql="update demo_jstl_images set average_ranking=? where id=?">
				<sql:param>${newRating}</sql:param>
				<sql:param>${param.image_id}</sql:param>
			</sql:update>

			<sql:update sql="update demo_jstl_images set rankings=? where id=?">
				<sql:param>${image.rankings+1}</sql:param>
				<sql:param>${param.image_id}</sql:param>
			</sql:update>

		</c:if>

	</sql:transaction>

	
	<c:out value="${fn:toUpperCase(fn:substring(image_name, 0, 1))}${fn:toLowerCase(fn:substring(image_name, 1, -1))}" />
	<br>
	<br>
	
	
	
	<a href=home.jsp>
	<img width=250  src="${pageContext.request.contextPath}/pics/${image_name}.jpg"/></a>		
			
	<form action='<c:url value="/gallery" />' method="post">
			<input type="hidden" name="action" value="rate" />
			<input type="hidden" name="image_id" value="${image.id}" />

		<br><br>
		Hodnoceni : <fmt:formatNumber value="${average_ranking}" maxFractionDigits="1"/>
		<br><br>
		Hodnotit : 
		<input type="radio" name="rating" value="5">5</input>
		<input type="radio" name="rating" value="4">4</input>
		<input type="radio" name="rating" value="3" checked="checked">3</input>
		<input type="radio" name="rating" value="2">2</input>
		<input type="radio" name="rating" value="1">1</input>
		<input type="submit" name="submit" value="OK"></input>
		
	</form>
	
</center>

<c:import url="footer.jsp"></c:import>