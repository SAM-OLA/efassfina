<%@ page language="java" import="cbnbas.wdfir.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  <!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con = null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "wdfir";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String thisday = "";
  String dealer = "";
  String signatory1 = "";
  String signatory2 = "";
  String contactname = "";
  String telno = "";
  String extno = "";
  String FinDate = "";
  String CBN_NDIC_LAST_EXAM_DATE = "";

  boolean tester = true;

     try {

     connect c = new connect();

    con = c.connectMethod();

     st = con.createStatement();
     rs = st.executeQuery("Select * from CONFIG order by SNO");

     if ( rs.next() ) {
       bankcode = rs.getString(3);
     }

     if ( rs.next() ) {
       bankname = rs.getString(3);
     }

     if ( rs.next() ) {
       thisday = rs.getString(3);
     }

     if ( rs.next() ) {
       signatory1 = rs.getString(3);
     }

     if ( rs.next() ) {
       signatory2 = rs.getString(3);
     }

     if ( rs.next() ) {
       contactname = rs.getString(3);
     }

     if ( rs.next() ) {
       telno = rs.getString(3);
     }

     if ( rs.next() ) {
       extno = rs.getString(3);
     }
if ( rs.next() ) {
       FinDate = rs.getString(3);
     }
if ( rs.next() ) {
       CBN_NDIC_LAST_EXAM_DATE = rs.getString(3);
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
	String wb100 = request.getParameter("wb100");
	String wb200 = request.getParameter("wb200");
	String wb300 = request.getParameter("wb300");
	String wb400 = request.getParameter("wb400");
	String wb500 = request.getParameter("wb500");
	String wb600 = request.getParameter("wb600");
	//String wt401 = request.getParameter("wt401");
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

	if ( wb100.equals("1") ) {
           wdfir100 w100 = new wdfir100();
           w100.setDaystring(thisday);
           w100.setInstname(bankname);
           w100.setInstcode(bankcode);
           w100.setOutputpath(outputpath);
           w100.setSignatory1(signatory1);
           w100.setSignatory2(signatory2);
           w100.setContactName(contactname);
           w100.setTelno(telno);
           w100.setExtno(extno);
           boolean test = w100.convert();

System.out.println("Got here to WDFIR 100");

	}

	if ( wb200.equals("1") ) {
           wdfir200 w200 = new wdfir200();
           w200.setDaystring(thisday);
           w200.setInstname(bankname);
           w200.setInstcode(bankcode);
           w200.setOutputpath(outputpath);
           w200.setSignatory1(signatory1);
           w200.setSignatory2(signatory2);
           w200.setContactName(contactname);
           w200.setTelno(telno);
           w200.setExtno(extno);
           boolean test = w200.convert();
System.out.println("Got here to WDFIR 200");
	}

	if ( wb300.equals("1") ) {
           wdfir300 w300 = new wdfir300();
           w300.setDaystring(thisday);
           w300.setInstname(bankname);
           w300.setInstcode(bankcode);
           w300.setOutputpath(outputpath);
           w300.setSignatory1(signatory1);
           w300.setSignatory2(signatory2);
           w300.setContactName(contactname);
           w300.setTelno(telno);
           w300.setExtno(extno);
           boolean test = w300.convert();
	}

	if ( wb400.equals("1") ) {
           wdfir400 w400 = new wdfir400();
           w400.setDaystring(thisday);
           w400.setInstname(bankname);
           w400.setInstcode(bankcode);
           w400.setOutputpath(outputpath);
           w400.setSignatory1(signatory1);
           w400.setSignatory2(signatory2);
           w400.setContactName(contactname);
           w400.setTelno(telno);
           w400.setExtno(extno);
           boolean test = w400.convert();
	}

	if ( wb500.equals("1") ) {
           wdfir500 w500 = new wdfir500();
           w500.setDaystring(thisday);
           w500.setInstname(bankname);
           w500.setInstcode(bankcode);
           w500.setOutputpath(outputpath);
           w500.setSignatory1(signatory1);
           w500.setSignatory2(signatory2);
           w500.setContactName(contactname);
           w500.setTelno(telno);
           w500.setExtno(extno);
           boolean test = w500.convert();
	}

	if ( wb600.equals("1") ) {
           wdfir600 w600 = new wdfir600();
           w600.setDaystring(thisday);
           w600.setInstname(bankname);
           w600.setInstcode(bankcode);
           w600.setOutputpath(outputpath);
           w600.setSignatory1(signatory1);
           w600.setSignatory2(signatory2);
           w600.setContactName(contactname);
           w600.setTelno(telno);
           w600.setExtno(extno);
           boolean test = w600.convert();
System.out.println("Generating WDFIR 600.xml");
	}

	/*
	if ( wb600.equals("1") ) {
           wbr600 w600 = new wbr600();
           w600.setDayString(thisday);
           w600.setInstname(bankname);
           w600.setInstcode(bankcode);
           w600.setOutputpath(outputpath);
           boolean test = w600.convert();
	}

	if ( wt401.equals("1") ) {
           wtr401 w401 = new wtr401();
           w401.setDayString(thisday);
           w401.setInstname(bankname);
           w401.setInstcode(bankcode);
           w401.setOutputpath(outputpath);
           boolean test = w401.convert();
	}
	*/
if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'wdfir_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
