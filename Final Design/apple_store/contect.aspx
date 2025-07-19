<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="contect.aspx.cs" Inherits="contect" Title="Contact Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<div id="usercontact" style="margin-top:-60px; margin-bottom:30px;color:black">Contact Us</div>

    <!DOCTYPE html>
<html>
<head>
<title>contact</title>
<style type="text/css">
    /* Style inputs with type="text", select elements and textareas */
    input[type=text], select, textarea {
        background-color:#d7f2ed;
    width: 100%; /* Full width */
    padding: 12px; /* Some padding */ 
    border: 1px solid #fffdfc; /* Gray border */
    border-radius: 6px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical; /* Allow the user to vertically resize the textarea (not horizontally) */
    }
    
    /* Style the submit button with a specific background color etc */
    input[type=reset] {
    background-color: #d7f2ed;
    color: black;
    padding: 12px 20px;
    border: 3px solid;
    border-radius: 4px;
    cursor: pointer;
    }
    input[type=reset]:hover{
        color:red;
    }
    
    /* When moving the mouse over the submit button, add a darker green color */
    input[type=submit]:hover {
    background-color:#d7f2ed;
    }
    
    /* Add a background color and some padding around the form */
    .container {
    border-radius: 5px;
    background-color: peachpuff;
    padding: 20px;
    }
        
    </style>
</head>
<body>
<div class="container">
  <form action="action_page.php">

    <label for="fname" style="color:black;">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname" style="color:black;">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">

    <label for="country" style="color:black;">Country</label>
    <select id="country" name="country">
        
	  <option value="india" style="color:black" >India</option>
      <option value="australia" style="color:black;">Australia</option>
      <option value="canada" style="color:black;">Canada</option>
      <option value="usa" style="color:black;">USA</option>
    </select>

    <label for="subject" style="color:black">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="reset" value="Submit">

  </form>
</div>
</body>
</html>
</asp:Content>

