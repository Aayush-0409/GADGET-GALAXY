<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adm_order_det.aspx.cs" Inherits="adm_order_det" Title="Adm Order Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ono" HeaderText="ono" SortExpression="ono" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
       
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT shop_detail.* FROM shop_detail where ono=@ono">
    <SelectParameters>
        <asp:SessionParameter Name="ono" SessionField="or_de" />
    </SelectParameters>
</asp:SqlDataSource>

</asp:Content>

