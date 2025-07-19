<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="client_reg.aspx.cs" Inherits="client_reg" Title="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0px" width="300px" height="200px" id="adminindex" >
        <tr>
            <th align="center">
                Register</th>
                            </tr>
                            <tr>
                                <td>
                                <label>
                                    Name:               
                                    </label>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    

                                  </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                    UserID :               
                                    </label>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    

                        <tr>
                                <td>
                                    <label>
                                    Password:&nbsp;    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                    
            &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Enter Birthdate:<asp:TextBox ID="TextBox3" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                

            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Register" />
            </td>
        </tr>
    </table>
</asp:Content>

