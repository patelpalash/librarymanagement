Imports System.Data.OleDb
Imports System.ServiceModel.Configuration

Partial Class bookstock
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=B:\2 year 4 sem\external exam\librarymanagement\bookStock.accdb")



    Protected Sub btninsert_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnInsert.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Insert into bookStock values(" & textboxbookid.Text & ",'" & TextBoxbookname.Text & "','" & TextBoxDistributor.Text & "'," & TextBoxQuantity.Text & ") "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery


            MsgBox("Record Inserted Successfully : " & ans)
            GridView1.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles Button5.Click
        textboxbookid.Text = ""
        TextBoxbookname.Text = ""
        TextBoxDistributor.Text = ""
        TextBoxQuantity.Text = ""

    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Delete from bookStock where book_id =" & textboxbookid.Text & "  "
            Dim cmd As New OleDbCommand(str, cn)
            cn.Open()
            ans = cmd.ExecuteNonQuery
            cn.Close()
            MsgBox("No of Records are : " & ans)
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Update bookStock set book_name='" & TextBoxbookname.Text & "',Distributor='" & TextBoxDistributor.Text & "',Quantity=" & TextBoxQuantity.Text & " where book_id =" & textboxbookid.Text & "   "
            Dim cmd As New OleDbCommand(str, cn)
            cn.Open()
            ans = cmd.ExecuteNonQuery
            MsgBox("Record Updated Successfully : " & ans)
            GridView1.DataBind()
            cn.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Try
            cn.Open()
            Dim str As String
            str = "Select * from bookStock where book_id=" & textboxbookid.Text & " "
            Dim cmd As New OleDbCommand(str, cn)
            Dim dr As OleDbDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                TextBoxbookname.Text = dr.Item(1).ToString
                TextBoxDistributor.Text = dr.Item(2).ToString
                TextBoxQuantity.Text = dr.Item(3).ToString

            End While
            GridView1.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

End Class
