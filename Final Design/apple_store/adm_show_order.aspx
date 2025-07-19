<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adm_show_order.aspx.cs" Inherits="adm_show_order" Title="Adm Show Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <div id="userproduct">
        Display Order </div>
        <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" style="font-size: 15pt" 
        onrowdeleting="GridView1_RowDeleting">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="View">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton6" runat="server" 
                        CommandArgument='<%# Eval("ono") %>' oncommand="LinkButton6_Command">View_Details</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
</asp:Content>

