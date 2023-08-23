
Imports System.Data.SqlClient
Imports System.Data
Imports System.Runtime.InteropServices

Partial Class bookstock
    Inherits System.Web.UI.Page
    Public Sub LoadData()
        Dim db As New Dbconn
        Dim cm As New SqlCommand("select * from bookstocktbl where UserId=@UserId")
        cm.Parameters.AddWithValue("@userId", Session("UserId"))
        GridView1.DataSource = db.GetTable(cm)
        GridView1.DataBind()
        GridView1.DataSource = db.GetTable(cm)
        GridView1.DataBind()
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("UserId") Is Nothing Then
            Response.Redirect("loginpage.aspx")
        Else
            If Not IsPostBack Then
                lblUser.Text = "Welcome " + Session("UserName")
                LoadData()
            End If
        End If
    End Sub
    Protected Sub btninsert_Click(sender As Object, e As EventArgs) Handles btninsert.Click
        Dim db As New Dbconn
        Dim cmd As New SqlCommand("insert into bookstocktbl values(@bookid,@bookname,@bookdis,@quantity)")
        cmd.Parameters.AddWithValue("@bookid", txtbookid.Text)
        cmd.Parameters.AddWithValue("@bookname", txtbookname.Text)
        cmd.Parameters.AddWithValue("@bookdis", txtdistributor.Text)
        cmd.Parameters.AddWithValue("@quantity", txtquantity.Text)
        db.ExeCommand(cmd)
    End Sub


    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim db As New Dbconn
        Dim cmd As New SqlCommand
        cmd = New SqlCommand("update bookstocktbl set bookname=@bookname,bookdis=@bookdis,quantity=@quantity where bookid=@bookid")
        cmd.Parameters.AddWithValue("@bookid", txtbookid.Text)
        cmd.Parameters.AddWithValue("@bookname", txtbookname.Text)
        cmd.Parameters.AddWithValue("@bookdis", txtdistributor.Text)
        cmd.Parameters.AddWithValue("@quantity", txtquantity.Text)
        cmd.Parameters.AddWithValue("@UserId", Session("UserId"))
        db.ExeCommand(cmd)
    End Sub


    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

End Class
