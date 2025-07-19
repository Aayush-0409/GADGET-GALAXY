<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="admincontact">User Feedback</div>

<table border="1" width="480px" id="feedback" cellpadding="5" cellspacing="10">
<tr>
<td width="150px" id="feedbacktext"><label style="color:red;">*</label> Name : </td>
<td id="feedbackinput">
    <asp:TextBox ID="TextBox1" runat="server" Width="250px" style="border-radius:10px;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Name is required" 
        ForeColor="Red" Display="Dynamic" />
</td>
</tr>
<tr>
<td width="150px" id="Td1"><label style="color:red;">*</label>E-mail : </td>
<td id="Td2">
    <asp:TextBox ID="TextBox2" runat="server" Width="250px" style="border-radius:10px;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="E-mail is required" 
        ForeColor="Red" Display="Dynamic" />
</td>
</tr>
<tr>
<td width="150px" id="Td3">Address : </td>
<td id="Td4">
    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" 
        Width="250px" style="border-radius:15px;"></asp:TextBox>
</td>
</tr>
<tr>
<td width="150px" id="Td5"><label style="color:red;">*</label>Mobile No : </td>
<td id="Td6">
    <asp:TextBox ID="TextBox4" runat="server" Width="250px" style="border-radius:10px;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Mobile No is required" 
        ForeColor="Red" Display="Dynamic" />
</td>
</tr>
<tr>
<td width="150px" id="Td7"><label style="color:red;">*</label>City : </td>
<td id="Td8">
    <asp:TextBox ID="TextBox5" runat="server" Width="250px" style="border-radius:10px;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="City is required" 
        ForeColor="Red" Display="Dynamic" />
</td>
</tr>
<tr>
<td width="150px" id="Td9"><label style="color:red;">*</label>Feedback : </td>
<td id="Td10">
    <asp:TextBox ID="TextBox6" runat="server" Height="150px" TextMode="MultiLine" 
        Width="250px" style="border-radius:15px;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="TextBox6" ErrorMessage="Feedback is required" 
        ForeColor="Red" Display="Dynamic" />
</td>
</tr>
<tr>
<td colspan="2">
<center>
    <asp:Button ID="Button1" runat="server" 
        Text="Submit" onclick="Button1_Click" style="color:blue; border-radius:12px; background-color:#A4F7BD; padding-left:40px; padding-right:40px;padding-top:7px;padding-bottom:7px;"/>
</center>
</td>
</tr>
</table>

</asp:Content>
