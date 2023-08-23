Imports System.Data.SqlClient
Partial Class signup
    Inherits System.Web.UI.Page




    Protected Sub Unnamed9_Click(sender As Object, e As EventArgs) Handles btnSignUp.Click
        Dim db As New Dbconn
        Dim cmd As New SqlCommand("insert into tblsignup values(@username,@email,@password)")
        cmd.Parameters.AddWithValue("@username", txtname.Text)
        cmd.Parameters.AddWithValue("@email", txtemail.Text)
        cmd.Parameters.AddWithValue("@password", txtpassword.Text)
        db.ExeCommand(cmd)

    End Sub
End Class
