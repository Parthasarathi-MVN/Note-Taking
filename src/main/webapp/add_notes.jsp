<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/styles1.css" />
    <title>Add Notes</title>
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
        <a href="#"><button class="btn bt">contact me</button></a>
      </nav>
    </header>


	 <h1 class="heading">Please fill your notes.</h1>

 
 
 	<form action="SaveNoteServlet"  method="post">
      <div class="add_notes title">
        <label for="title" class="form-label">Note title</label>
        <input
          name="title"
          required
          type="text"
          class="form-control title"
          id="title"
          placeholder="Enter your title here"
        />
      </div>

      <div class="add_notes content">
        <label for="content" class="form-label">Note Content</label>
        <textarea
          name="content"
          required
          id="content"
          class="form-control content"
          style="height: 300px"
          placeholder="Enter your content here..."
         
        ></textarea>
      </div>

      <div class="submit">
        <button type="submit" class="btn-submit bt">Add Note</button>
      </div>
    </form>
 
 
 
 
 
    
    
    
    
</body>
</html>