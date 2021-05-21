<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/styles1.css" />
    <title>All your notes</title>
  </head>
<body>

<header>
      <nav class="nav nav__links">
        <a class="logo" href="#">LOGO</a>
        <ul>
          <li><a href="index.jsp"> Home</a></li>
          <li><a href="add_notes.jsp">Add Note</a></li>
          <li><a href="all_notes.jsp">Show Notes</a></li>
        </ul>
        <a href="#"><button class="btn">contact me</button></a>
      </nav>
    </header>
    <h1 class="heading">All your notes are displayed here.</h1>
    
    <%
    Session s = FactoryProvider.getFactory().openSession();
    
    Query q = s.createQuery("from Note");
    List<Note> list = q.list();
    for(Note note:list)
    {
    	
    %>
    
     <div class="all-cards">
      <div class="card">
        <div class="card-header"><%= note.getTitle() %></div>
        <div class="card-main">
          <div class="main-description"><%= note.getContent() %></div>
          <p style="color:steelblue">
      <%= note.getAddedDate()%>
      </p>
        </div>
      </div>

      <div class="align">
        <button class="btn-delete"><a href="DeleteServlet?note_id=<%=note.getId()%>">Delete</a></button>
        <button class="btn-update"><a href="edit.jsp?note_id=<%= note.getId() %>">Update</a></button>
        
      </div>
    </div>
    
   
    
    
    <%
    	//out.println(note.getId()+" "+note.getTitle()+"<br>");
    }
    
    s.close();
    %>
    
    


</body>
</html>