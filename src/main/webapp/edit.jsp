<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.hibernate.Session"%>
    <%@page import="com.helper.FactoryProvider"%>
    <%@page import="com.entities.Note"%>
    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/styles1.css" />
    <title>Update your notes</title>
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

    <h1 class="heading">This is edit page</h1>

        <%
        
        int noteId = Integer.parseInt(request.getParameter("note_id").trim());
       
   
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class, noteId);
		
	        
        
        %>
        
        
       <form action="UpdateServlet" method="post">
      <input value="<%=note.getId()%>" name="noteId" type="hidden" />

      <div class="add_notes title">
        <label for="title" class="form-label">Note title</label>
        <input
          name="title"
          required
          type="text"
          class="form-control title"
          id="title"
          placeholder="Enter your title here"
          value="<%=note.getTitle() %>"
        />
      </div>

      <div class="add_notes content">
        <label for="content" class="form-label">Note Content</label>
        <textarea
          name="content"
          required
          id="content"
          placeholder="Enter your content here..."
          class="form-control content"
          style="height: 300px"
        ><%=note.getContent()%></textarea>
      </div>

      <div class="submit">
        <button type="submit" class="btn-submit">Edit Note</button>
      </div>
    </form>
        
        
      
</body>
</html>