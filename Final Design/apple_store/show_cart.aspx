<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="show_cart.aspx.cs" Inherits="show_cart" Title="Show Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black" GridLines="None" 
        onrowdeleting="GridView1_RowDeleting" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" 
                        ImageUrl='<%# Eval("pro_img") %>' Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="name" HeaderText="Product Name" />
            <asp:BoundField DataField="price" HeaderText="Product  Price" />
            <asp:BoundField DataField="brand_name" HeaderText="Brand Name" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
    
    <asp:Label ID="Label1" runat="server" Text="No Product Found" Visible="false"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Order Confirmed" Visible="false"></asp:Label><br />
    <asp:Button ID="Button1" runat="server" style="font-size: 15pt" 
        Text="Order It" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="font-size: 15pt" Text="Back" />
&nbsp;&nbsp; 
</asp:Content>

