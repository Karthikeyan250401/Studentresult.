<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
    String course=request.getParameter("course");
    String branch=request.getParameter("branch");
    String roll=request.getParameter("roll");
    String name=request.getParameter("name");
    String fatherName=request.getParameter("fatherName");
    String gender=request.getParameter("gender");
    
    
    try
    {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        st.executeUpdate("insert into student values('"+course+"','"+branch+"','"+roll+"','"+name+"','"+fatherName+"','"+gender+"')");
        response.sendRedirect("adminHome.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
    
    
    
    
%>