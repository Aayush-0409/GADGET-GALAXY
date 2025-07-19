<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" Title="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <div id="userproduct" style="font-size:30px; font-weight:700; text-decoration:none;
    
                color:#35352b;
                text-align:center;
                padding-top:5px;
                padding-bottom:5px;
                text-shadow:2px 2px 5px rgba(100,80,150,0.9);

               background: rgb(63,94,251);
               background: #FFEFBA;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

               filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#3f5efb',endColorstr='#fc466b',GradientType=1);">

                   Products 

           </div>


  
        <asp:DataList ID="DataList1" runat="server" CellPadding="2" cellspacing="2" width="100%" height="700px" ForeColor="#333333" 
        RepeatColumns="6" RepeatDirection="Horizontal" 
            
          style=" 
               margin-top:20px; background:black;
               filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#3f5efb',endColorstr='#fc466b',GradientType=1);" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">

        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="white" />
        <ItemTemplate ><a href="Products.aspx"  style="padding-top:5px;  "></a> 
           
           <center style="width:200px;">
            <asp:LinkButton ID="LinkButton2" runat="server" 
                CommandArgument='<%# Eval("name") %>' Font-Size="20pt" 
                oncommand="LinkButton2_Command">
                
                <asp:Image ID="Image1" runat="server" Height="180px" 
                ImageUrl='<%# Eval("pro_img") %>' Width="150px" style=""/> 
            <br />
            
                     
          <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size:20px;  margin-right:20px;" Text="Rs."></asp:Label>
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("price") %>' 
                style="font-weight:700; font-size:20px;"></asp:Label>
       
            <b>/-</b><br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size:20px;" 
                Text='<%# Eval("name") %>'></asp:Label></asp:LinkButton>  
                <center/> 
        </ItemTemplate>
        <AlternatingItemStyle BackColor="white" />
        <ItemStyle BackColor="white" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

</asp:Content>

