<%@ page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="dbcon.jsp"%>
<%@page import="java.util.Random"%>

<%
	
String s1,s2,s3,s4,s5,s7;

s1=(String)session.getAttribute("s1");
s2=(String)session.getAttribute("s2");
s3=(String)session.getAttribute("s3");
s4=(String)session.getAttribute("s4");
s5=(String)session.getAttribute("s5");
s7=(String)session.getAttribute("s6");
out.println(s5);



String contentType = request.getContentType();

if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
 		DataInputStream in = new DataInputStream(request.getInputStream());
		//we are taking the length of Content type data
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		//this loop converting the uploaded file into byte code
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
			totalBytesRead += byteRead;
			}

		//String file = new String(dataBytes);
		String file = new String(dataBytes,"CP1256");
		//for saving the file name
		String saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

		

		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
		int pos;
		//extracting the index of file 
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		//int startPos = ((file.substring(0, pos)).getBytes()).length;
		//int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

		int startPos = ((file.substring(0, pos)).getBytes("CP1256")).length;

        int endPos = ((file.substring(0, boundaryLocation)).getBytes("CP1256")).length;




		// creating a new file with the same name and writing the content in new file
		//FileOutputStream fileOut = new FileOutputStream(saveFile);
		FileOutputStream fileOut = new FileOutputStream("C://Program Files//Apache Software Foundation//Tomcat 10.1//webapps//ROOT//Internship_2023/upload/"+saveFile);


		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();

		out.println(saveFile);




int k=stmt.executeUpdate("insert into products(category,product_name,Uom,qty,price,image)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+saveFile+"')");
}

%>

<script>	
alert("uploaded successfully");
document.location="products.jsp";
</script>