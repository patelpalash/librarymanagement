<%@ Page Language="VB" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="signup.css" />
    <title></title>
</head>
<body>
    <div class="loginbox">
        <img src="assets/download.png" alt="image not loding" class="user"/>
        <h2>Sign Up Here</h2>
        <form runat="server">
            <asp:Label Text="Name" CssClass="lblemail" runat="server" />       
            <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Your Name" ID="txtname"  />

            <asp:Label Text="Email" CssClass="lblemail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Email" ID="txtemail" />
            <asp:Label Text="password" CssClass="lblpass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="**********" ID="txtpassword" />
            <asp:Label Text="password" CssClass="lblpass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="Confirm Password" ID="txtcpassword" />

      <a href="Default.aspx"><asp:Button Text="Sign Up" CssClass="btnsubmit" runat="server" ID="btnSignUp" OnClick="Unnamed9_Click" /></a>
        
             <asp:LinkButton Text="Forget Password" CssClass="btnforget" runat="server"   />
            

        </form>
</body>
</html>
