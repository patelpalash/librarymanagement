<%@ Page Language="VB" AutoEventWireup="false" CodeFile="bookstock.aspx.vb" Inherits="bookstock" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="Default.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signup.aspx">signup</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.aspx">about</a>
        </li>
      </ul>

    <div class="navmargin">
            <ul class="navbar-nav">
        <li class="nav-item">
         <div class="btn-group" role="group" aria-label="Basic outlined example">
           <a href="loginpage.aspx"><button type="button" class="btn btn-outline-danger">Login</button></a> 
            <a href="signup.aspx"><button type="button" class="btn btn-outline-primary">SignUP</button></a>
        </div>
      </ul>

    </div>

    </div>
  </div>
</nav>


    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="bookstock.css" />
</head>

<body>


    <form id="form1" runat="server">
        <h4>
            &nbsp;</h4>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h4>
         <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
            </h4>
            <div class="centerdiv" id="DataGridView1">
            <asp:Label Text="Book Id" CssClass="lblemail" runat="server" />

             <br />
                <asp:TextBox ID="textboxbookid" runat="server">please enter book id</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBoxbookname" runat="server" Width="163px">please enter book name</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBoxDistributor" runat="server" Width="190px">please enter name of distributor</asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBoxQuantity" runat="server">please enter quantity</asp:TextBox>
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
            <asp:Button ID="btnClear" runat="server" Text="Clear" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" EnableModelValidation="True">
                <Columns>
                    <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                    <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                    <asp:BoundField DataField="Distributor" HeaderText="Distributor" SortExpression="Distributor" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>

            </asp:GridView>

                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/bookStock.accdb" SelectCommand="SELECT [book_id], [book_name], [Distributor], [Quantity] FROM [bookStock]"></asp:AccessDataSource>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [bookid], [bookname], [bookdis], [quantity] FROM [bookstocktbl]"></asp:SqlDataSource>

            <br />

        </div>
    </form>
</body>
</html>
