<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ReviewUS</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome for Stars -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
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
    textarea[type="message"],
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
            .star-rating input[type="radio"] {
            display: none;
        }

        .star-rating label {
            font-size: 2rem;
            color: #ddd;
            cursor: pointer;
        }

        .star-rating input[type="radio"]:checked ~ label {
            color: #ffc107;
        }

        .star-rating label:hover,
        .star-rating label:hover ~ label {
            color: #ffc107;
        }

        .star-rating input[type="radio"]:checked + label,
        .star-rating input[type="radio"]:checked + label ~ label {
            color: #ffc107;
        }
  </style>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>
<div class="HomeContBottom">
<div class="NoGrid"><jsp:include page="Message.jsp"></jsp:include></div>
<div class="form-container">
  <form action="ReviewServlet" method="post">
    <h1>Review us</h1>
    <input type="hidden" name="process" value="addReview">
    
    <label for="name">Name:</label>
    <input type="text" id="name" name="name">

    <label for="contact">Contact:</label>
    <input type="tel" id="contact" name="contact">

    <label for="email">Email:</label>
    <input type="email" id="email" name="email">
    
    <label for="message">Review:</label>
    <textarea type="message" id="message" name="message" rows="3" maxlength="256"></textarea>

	<label for="email">Rating:</label>
   	<form action="RatingServlet" method="post">
        <div class="star-rating d-flex flex-row-reverse justify-content-center">
            <input type="radio" name="rating" value="5" id="star5"><label for="star5"><i class="fas fa-star"></i></label>
            <input type="radio" name="rating" value="4" id="star4"><label for="star4"><i class="fas fa-star"></i></label>
            <input type="radio" name="rating" value="3" id="star3"><label for="star3"><i class="fas fa-star"></i></label>
            <input type="radio" name="rating" value="2" id="star2"><label for="star2"><i class="fas fa-star"></i></label>
            <input type="radio" name="rating" value="1" id="star1"><label for="star1"><i class="fas fa-star"></i></label>
        </div>

    <button type="submit" class="btn-submit">Submit</button>
  </form>
</div>
</div>
<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>
