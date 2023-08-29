
Imports System.Data.OleDb
Imports System.ServiceModel.Configuration


Partial Class bookSales
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=B:\2 year 4 sem\external exam\librarymanagement\Database_BookSell1.accdb")




    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        Try

            Dim str As String
            Dim ans As Integer
            str = "Insert into bookSells values('" & txtcustomerName.Text & "'," & txtcustomerMoNo.Text & ",'" & txtbookName.Text & "'," & txtbookPrice.Text & " , " & txtbookQuatity.Text & ") "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery


            MsgBox("Record Inserted Successfully : " & ans)
            GridView2.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Update bookSells set Customer_Name='" & txtcustomerName.Text & "',Book_Name='" & txtbookName.Text & "',Book_Price=" & txtbookPrice.Text & ",Book_quantity=" & txtbookQuatity.Text & " where Customer_MoNo =" & txtcustomerMoNo.Text & "   "
            Dim cmd As New OleDbCommand(str, cn)
            cn.Open()
            ans = cmd.ExecuteNonQuery
            MsgBox("Record Updated Successfully : " & ans)
            GridView2.DataBind()
            cn.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub



    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Delete from bookSells where Customer_MoNo=" & txtcustomerMoNo.Text & "  "
            Dim cmd As New OleDbCommand(str, cn)
            cn.Open()
            ans = cmd.ExecuteNonQuery
            cn.Close()
            MsgBox("No of Records are : " & ans)
            GridView2.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Try
            cn.Open()
            Dim str As String
            str = "Select * from bookSells where Customer_MoNo=" & txtcustomerMoNo.Text & " "
            Dim cmd As New OleDbCommand(str, cn)
            Dim dr As OleDbDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                txtcustomerName.Text = dr.Item(0).ToString
                txtbookName.Text = dr.Item(2).ToString
                txtbookPrice.Text = dr.Item(3).ToString
                txtbookQuatity.Text = dr.Item(4).ToString
            End While
            GridView2.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        txtbookName.Text = ""
        txtbookPrice.Text = ""
        txtbookQuatity.Text = ""
        txtcustomerMoNo.Text = ""
        txtcustomerName.Text = ""


    End Sub
End Class
