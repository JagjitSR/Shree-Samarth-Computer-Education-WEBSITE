<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Enquiry Form</title>
  <link rel="stylesheet" href="CSS.css">
  <style>    
    .form-container {
      flex-grow: 1;
      display: flex;
      justify-content: center;
      align-items: center;
      padding-top: 5px;
    }

    form {
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
      max-width: 100%;
      width: 100%;
    }

    form h1 {
      text-align: center;
      color: #f53675;
      margin-bottom: 25px;
    }

    label {
      color: orange;
      font-weight: 600;
      display: block;
      margin-top: 15px;
    }

    input[type="text"],
    input[type="tel"],
    input[type="email"],
    textarea {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 6px;
      box-sizing: border-box;
      resize: none;
    }

    .checkbox-group {
      margin-top: 10px;
    }

    .checkbox-group label {
      display: block;
      margin-bottom: 5px;
      font-weight: normal;
    }

    input[type="checkbox"] {
      margin-right: 8px;
    }

    .btn-submit {
      margin-top: 25px;
      width: 100%;
      padding: 12px;
      background-color: rgb(245, 54, 117);
      border: none;
      border-radius: 6px;
      color: white;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .btn-submit:hover {
      background-color: #c9326b;
    }
  </style>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>
<div class="HomeContBottom">
<div class="NoGrid"><jsp:include page="Message.jsp"></jsp:include></div>
<div class="form-container">
  <form action="EnquiryServlet" method="post">
    <h1>Enquiry Form</h1>
    <input type="hidden" name="process" value="addEnquiry">
    
    <label for="name">Name:</label>
    <input type="text" id="name" name="name">

    <label for="contact">Contact:</label>
    <input type="tel" id="contact" name="contact">

    <label for="email">Email:</label>
    <input type="email" id="email" name="email">

    <label for="address">Address:</label>
    <textarea id="address" name="address" rows="3"></textarea>

    <label>Courses:</label>
    <div class="checkbox-group">
      <label><input type="checkbox" name="courses" value="MS-Office"> MS-Office</label>
      <label><input type="checkbox" name="courses" value="MS-CIT"> MS-CIT</label>
      <label><input type="checkbox" name="courses" value="TallyPrime + GST"> TallyPrime + GST</label>
      <label><input type="checkbox" name="courses" value="Advance Excel"> Advance Excel</label>
      <label><input type="checkbox" name="courses" value="English 30WPM"> English 30WPM</label>
      <label><input type="checkbox" name="courses" value="English 40WPM"> English 40WPM</label>
      <label><input type="checkbox" name="courses" value="Marathi 30WPM"> Marathi 30WPM</label>
      <label><input type="checkbox" name="courses" value="Marathi 40WPM"> Marathi 40WPM</label>
      <label><input type="checkbox" name="courses" value="English Speaking"> English Speaking</label>
    </div>

    <label for="other">Other Courses:</label>
    <textarea id="other" name="other" rows="2"></textarea>

    <button type="submit" class="btn-submit">Submit</button>
  </form>
</div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>
