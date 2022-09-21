<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${category.name}</title>
</head>
<body>
	<h1>Trang ${category.name}</h1>
	<footer>
   		${footerInfo.companyName} <br/>
   		Địa chỉ : ${footerInfo.address} <br/>
   		email : ${footerInfo.email} <br/>
   		Số điện thoại: ${footerInfo.phoneNumber} <br/>
   	</footer>
</body>
</html>