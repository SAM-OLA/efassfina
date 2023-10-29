<%@ page language="java" import="cbnbas.sdfir.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  <!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con=null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "SDFIR";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String thisday = "";
  String signatory1 = "";
  String signatory2 = "";
  String contactname = "";
  String telno = "";
  String extno = "";
  boolean tester = true;

  try {

     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     con = DriverManager.getConnection(odbcprofile);

     st = con.createStatement();
     rs = st.executeQuery("Select * from [CONFIG$]");

     if ( rs.next() ) {
       bankcode = rs.getString(2);
     }

     if ( rs.next() ) {
       bankname = rs.getString(2);
     }

     if ( rs.next() ) {
       thisday = rs.getString(2);
     }

     if ( rs.next() ) {
       signatory1 = rs.getString(2);
     }

     if ( rs.next() ) {
       signatory2 = rs.getString(2);
     }

     if ( rs.next() ) {
       contactname = rs.getString(2);
     }

     if ( rs.next() ) {
       telno = rs.getString(2);
     }

     if ( rs.next() ) {
       extno = rs.getString(2);
     }

//Handle errors for JDBC
   }
   catch (SQLException se) {
     se.printStackTrace();
//Handle other exceptions
   }
   catch (Exception e) {
     e.printStackTrace();
//finally block used to close connection
   }
   finally {
     try {
       if (con != null) {
         String msg = "Closing connection from finally block.";
         System.out.println(msg);
         rs.close();
         st.close();
         con.close();
       }
     }
     catch (SQLException se) {
       se.printStackTrace();
     } //end finally try
   } //end try
%>
<%

	String sd1910 = request.getParameter("sd1910");
	String sd1920 = request.getParameter("sd1920");
	String sd1930 = request.getParameter("sd1930");
	String sd1940 = request.getParameter("sd1940");
	String sd1950 = request.getParameter("sd1950");

	String outputpath = "c:/cbnxml/sdfir/";

	String newpath = outputpath + thisday ;
        File fi = new File(newpath);
        if (fi.exists()) {
          outputpath = newpath + "/";
          System.out.println("Folder "+newpath+ " already exist ...");
        } else {
          // Create Folder ...
          newpath = newpath + "/";
          boolean success = (new File(newpath)).mkdir();
          if (!success) {
            System.out.println("Folder "+newpath+ " could not be created ...");
          } else  outputpath = newpath;
        }

	if ( sd1910.equals("1") ) {
           sdfir1910 d1910 = new sdfir1910();
           d1910.setDayString(thisday);
           d1910.setInstname(bankname);
           d1910.setInstcode(bankcode);
           d1910.setOutputpath(outputpath);
           d1910.setSignatory1(signatory1);
           d1910.setSignatory2(signatory2);
           d1910.setContactName(contactname);
           d1910.setTelno(telno);
           d1910.setExtno(extno);
           boolean test = d1910.convert();
	}

	if ( sd1920.equals("1") ) {
           sdfir1920 d1920 = new sdfir1920();
           d1920.setDayString(thisday);
           d1920.setInstname(bankname);
           d1920.setInstcode(bankcode);
           d1920.setOutputpath(outputpath);
           d1920.setSignatory1(signatory1);
           d1920.setSignatory2(signatory2);
           d1920.setContactName(contactname);
           d1920.setTelno(telno);
           d1920.setExtno(extno);
           boolean test = d1920.convert();
	}

	if ( sd1930.equals("1") ) {
           sdfir1930 d1930 = new sdfir1930();
           d1930.setDayString(thisday);
           d1930.setInstname(bankname);
           d1930.setInstcode(bankcode);
           d1930.setOutputpath(outputpath);
           d1930.setSignatory1(signatory1);
           d1930.setSignatory2(signatory2);
           d1930.setContactName(contactname);
           d1930.setTelno(telno);
           d1930.setExtno(extno);
           boolean test = d1930.convert();
	}

	if ( sd1940.equals("1") ) {
           sdfir1940 d1940 = new sdfir1940();
           d1940.setDayString(thisday);
           d1940.setInstname(bankname);
           d1940.setInstcode(bankcode);
           d1940.setOutputpath(outputpath);
           d1940.setSignatory1(signatory1);
           d1940.setSignatory2(signatory2);
           d1940.setContactName(contactname);
           d1940.setTelno(telno);
           d1940.setExtno(extno);
           boolean test = d1940.convert();
	}

	if ( sd1950.equals("1") ) {
           sdfir1950 d1950 = new sdfir1950();
           d1950.setDayString(thisday);
           d1950.setInstname(bankname);
           d1950.setInstcode(bankcode);
           d1950.setOutputpath(outputpath);
           d1950.setSignatory1(signatory1);
           d1950.setSignatory2(signatory2);
           d1950.setContactName(contactname);
           d1950.setTelno(telno);
           d1950.setExtno(extno);
           boolean test = d1950.convert();
	}

if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'dfi_sbr_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
