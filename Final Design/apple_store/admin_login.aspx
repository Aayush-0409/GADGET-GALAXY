<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" Title="Adm Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" href="style.css"></link>
</head>
<body>
    <form id="form1" runat="server">
    <div id="banner"><img src="images/Banner.jpg" width="100%" height="130%"></div>
<div>
<center>

<table border="0px" width="300px" height="200px"  id="adminindex">
<tr>
<th align="center" colspan='2'>Admin Login</th>
</tr>
<tr>
		<td colspan='2' style='color:#aa0114'>
            <asp:Label ID="Label1" runat="server" Text="Invalid User Name or Password" 
                Visible="False"></asp:Label></td>
	</tr>
<tr>
<td><label>Username : </label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
<tr>
<td><label>Password : </label>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></td>
</tr> 
<tr align="center"><td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
    </td>
</tr>
    <tr align="center"><td>
        <a href="client_login.aspx">Back</a>
                       </td></tr>
</table>

</center>
</div>

    </form>
</body>
</html>
