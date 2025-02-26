<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
	
<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
statistics-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin-top: 50px;
	animation: fallIn 1.5s ease-in-out;
}

@
keyframes fallIn { 0% {
	transform: translateY(-200px);
}

100
%
{
transform
:
translateY(
0
);
}
}
.statistics-box:hover {
	transform: scale(1.1); /* Zoom out the card */
	background-color: #e7c798; /* Change the background color */
}

.statistics-box p {
	font-size: 48px;
	margin: 0;
	color: #008000; /* Green color for the number values */
}

.statistics-box {
	flex: 1;
	max-width: 300px;
	background-color: #cad9db;
	padding: 20px;
	margin: 10px;
	box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
	text-align: center;
	color: #0a0808;
	border-radius: 10px;
}

.statistics-box h2 {
	font-size: 36px;
	margin-bottom: 20px;
}

.statistics-box p {
	font-size: 48px;
	margin: 0;
}

.navbar {
	background-color: black;
	border-radius: 30px;
}

.navbar ul {
	overflow: auto;
}

.navbar li {
	float: left;
	list-style: none;
	margin: 13px 20px;
}

.navbar li a {
	padding: 3px 3px;
	text-decoration: none;
	color: white;
}

.navbar li a:hover {
	color: red
}

.search {
	float: right;
	color: white;
	padding: 12px 75px;
}

.navbar input {
	border: 2px solid black;
	border-radius: 14px;
	padding: 3px 17px;
	width: 129px;
}

.button {
	background-color: black;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

input[type=text], input[type=password], input[type=number], input[type=email],
	select, input[type=date], input[type=file], textarea {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.search {
	float: right;
	color: white;
	padding: 12px 75px;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@ include file="adminnavbar.jsp"%>
	<h3 align=center>
		<u>Add About</u>
	</h3>
	<span class="blink">
		<h3 align=center style="color: red">${message}</h3>
	</span>
	<br>

	<form action="insertabout" method="post" enctype="multipart/form-data">

		<table align=center>

				<tr>
				<td><label>City</label></td>
				<td><select name="cityname" id="hotel" required>
						<option value="" disabled selected>Select City</option>
						<c:forEach items="${clist}" var="c">
							<option value="${c.city}">${c.city}</option>
							<!-- Add more vehicle options as needed -->
							</c:forEach>
					</select></td>
			</tr>

			<tr>
				<td><label>City Name</label></td>
				<td><input type="text" name="nameofthecitylang" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>City Image</label></td>
				<td><input type="file" name="cityimage" required="required" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr>
				<td><label>City Description</label></td>
				<td><textarea name="citydescription"></textarea></td>
			</tr>

			<tr>
				<td><label>Culture Image</label></td>
				<td><input type="file" name="cultureimage" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Culture Description</label></td>
				<td><textarea name="culturedescription"></textarea></td>
			</tr>
			
			<tr>
				<td><label>Festival Image 1</label></td>
				<td><input type="file" name="festivalimage1" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Festival Image 2</label></td>
				<td><input type="file" name="festivalimage2" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Festival Image 3</label></td>
				<td><input type="file" name="festivalimage3" required="required" /></td>
			</tr>
			<tr>
				<td><label>Famous Food Image 1</label></td>
				<td><input type="file" name="foodimage1" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Famous Food Image 2</label></td>
				<td><input type="file" name="foodimage2" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Famous Food Image 3</label></td>
				<td><input type="file" name="foodimage3" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Famous Food Image 4</label></td>
				<td><input type="file" name="foodimage4" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Famous Food Image 5</label></td>
				<td><input type="file" name="foodimage5" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Famous Food Image 6</label></td>
				<td><input type="file" name="foodimage6" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Gallery Image 1</label></td>
				<td><input type="file" name="galleryimage1" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Gallery Image 2</label></td>
				<td><input type="file" name="galleryimage2" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Gallery Image 3</label></td>
				<td><input type="file" name="galleryimage3" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Politics Image</label></td>
				<td><input type="file" name="politicsimage" required="required" /></td>
			</tr>
			
			<tr>
				<td><label>Politics Description</label></td>
				<td><textarea name="politicsdescription"></textarea></td>
			</tr>

			<tr>
				<td><label>Map Link</label></td>
				<td><input type="text" name="maplink" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr align=center>
				<td colspan=2><input type="submit" value="Add" class="button"></td>
			</tr>
		</table>
	</form>
</body>
</html>


