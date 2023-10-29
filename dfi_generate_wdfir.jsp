<%@ page language="java" import="cbnbas.wdfir.*, java.sql.*, java.io.*" %>
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
  String odbcName = "WDFIR";
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

	String wd100 = request.getParameter("wb100");
	String wd200 = request.getParameter("wb200");
	String wd300 = request.getParameter("wb300");
	String wd400 = request.getParameter("wb400");
	String wd500 = request.getParameter("wb500");
	String wd600 = request.getParameter("wb600");

	String outputpath = "c:/cbnxml/wdfir/";

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

	if ( wd100.equals("1") ) {
           wdfir100 d100 = new wdfir100();
           d100.setDaystring(thisday);
           d100.setInstname(bankname);
           d100.setInstcode(bankcode);
           d100.setOutputpath(outputpath);
           d100.setSignatory1(signatory1);
           d100.setSignatory2(signatory2);
           d100.setContactName(contactname);
           d100.setTelno(telno);
           d100.setExtno(extno);
           boolean test = d100.convert();
	}

	if ( wd200.equals("1") ) {
           wdfir200 d200 = new wdfir200();
           d200.setDaystring(thisday);
           d200.setInstname(bankname);
           d200.setInstcode(bankcode);
           d200.setOutputpath(outputpath);
           d200.setSignatory1(signatory1);
           d200.setSignatory2(signatory2);
           d200.setContactName(contactname);
           d200.setTelno(telno);
           d200.setExtno(extno);
           boolean test = d200.convert();
	}

	if ( wd300.equals("1") ) {
           wdfir300 d300 = new wdfir300();
           d300.setDaystring(thisday);
           d300.setInstname(bankname);
           d300.setInstcode(bankcode);
           d300.setOutputpath(outputpath);
           d300.setSignatory1(signatory1);
           d300.setSignatory2(signatory2);
           d300.setContactName(contactname);
           d300.setTelno(telno);
           d300.setExtno(extno);
           boolean test = d300.convert();
	}

	if ( wd400.equals("1") ) {
           wdfir400 d400 = new wdfir400();
           d400.setDaystring(thisday);
           d400.setInstname(bankname);
           d400.setInstcode(bankcode);
           d400.setOutputpath(outputpath);
           d400.setSignatory1(signatory1);
           d400.setSignatory2(signatory2);
           d400.setContactName(contactname);
           d400.setTelno(telno);
           d400.setExtno(extno);
           boolean test = d400.convert();
	}

	if ( wd500.equals("1") ) {
           wdfir500 d500 = new wdfir500();
           d500.setDaystring(thisday);
           d500.setInstname(bankname);
           d500.setInstcode(bankcode);
           d500.setOutputpath(outputpath);
           d500.setSignatory1(signatory1);
           d500.setSignatory2(signatory2);
           d500.setContactName(contactname);
           d500.setTelno(telno);
           d500.setExtno(extno);
           boolean test = d500.convert();
	}

	if ( wd600.equals("1") ) {
           wdfir600 d600 = new wdfir600();
           d600.setDaystring(thisday);
           d600.setInstname(bankname);
           d600.setInstcode(bankcode);
           d600.setOutputpath(outputpath);
           d600.setSignatory1(signatory1);
           d600.setSignatory2(signatory2);
           d600.setContactName(contactname);
           d600.setTelno(telno);
           d600.setExtno(extno);
           boolean test = d600.convert();
	}

if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'dfi_weekly_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
