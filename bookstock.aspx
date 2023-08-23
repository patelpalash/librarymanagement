<%@ Page Language="VB" AutoEventWireup="false" CodeFile="bookstock.aspx.vb" Inherits="bookstock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="bookstock.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h4>
            &nbsp;</h4>
            <div class="centerdiv">
         <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
            <asp:Label Text="Book Id" CssClass="lblemail" runat="server" />

             <br />
            <br />

            <asp:Label Text="Book Name" CssClass="lblemail" runat="server" />
             
   
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />

             <asp:Label Text="Distributor" CssClass="lblemail" runat="server" ID="Label1" />

            <br />

             <asp:Label Text="Qauntity" CssClass="lblemail" runat="server" ID="Label2" />

            <br />
            <br />
            <asp:Button ID="btninsert" runat="server" Text="Insert" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" />
            <br />
            <br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" Text="Search" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Update" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="bookid" HeaderText="bookid" SortExpression="bookid" />
                    <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                    <asp:BoundField DataField="bookdis" HeaderText="bookdis" SortExpression="bookdis" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                </Columns>

            </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [bookid], [bookname], [bookdis], [quantity] FROM [bookstocktbl]"></asp:SqlDataSource>

            <br />

        </div>
    </form>
</body>
</html>
