<%@ Page Language="VB" AutoEventWireup="false" CodeFile="loginpage.aspx.vb" Inherits="loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="loginstyle.css" rel="stylesheet" />
</head>
<body>

    <div class="loginbox">
        <img src="assets/download.png" alt="image not loding" class="user"/>
        <h2>Log In Here</h2>
        <form runat="server">
            <asp:Label Text="Email" CssClass="lblemail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Email" ID="txtEmail" />
            <asp:Label Text="password" CssClass="lblpass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="**********" ID="txtPass" />
      <a href="Default.aspx">       <asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" ID="btnsignin" /></a>
        
             <asp:LinkButton Text="Forget Password" CssClass="btnforget" runat="server"   />
            

        </form>
    </div>
</body>
</html>
