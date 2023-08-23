Imports System.Data
Imports System.Data.SqlClient
Partial Class loginpage
    Inherits System.Web.UI.Page



    Protected Sub btnsignin_Click(sender As Object, e As EventArgs) Handles btnsignin.Click
        Dim db As New Dbconn
        Dim cm As New SqlCommand _
         ("select * from tblsignup where Email=@Email and Password=@Password")
        cm.Parameters.AddWithValue("@Email", txtEmail.Text)
        cm.Parameters.AddWithValue("@Password", txtPass.Text)
        Dim dt As DataTable = db.GetTable(cm)
        If Not dt Is Nothing AndAlso dt.Rows.Count > 0 Then
            Session("userid") = dt.Rows(0).Item("UserId")
            Session("username") = dt.Rows(0).Item("UserName")
            Response.Redirect("default.aspx")
        Else
            MsgBox("Email or Password Incorrect")
        End If

    End Sub
End Class
