
Imports System.Data.OleDb

Partial Class staff
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=B:\2 year 4 sem\external exam\librarymanagement\staf.accdb")


    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        Try

            Dim str As String
            Dim ans As Integer
            str = "Insert into staf values(" & txtEmployeeId.Text & ",'" & txtEmployeeName.Text & "','" & txtEmployeePostion.Text & "'," & txtEmployeeSalary.Text & " , " & txtEmployeeMoNo.Text & ") "
            cn.Open()
            Dim cmd As New OleDbCommand(str, cn)
            ans = cmd.ExecuteNonQuery
            MsgBox("Record Inserted Successfully : " & ans)
            GridView3.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Delete from staf where employee_id=" & txtEmployeeId.Text & "  "
            Dim cmd As New OleDbCommand(str, cn)
            cn.Open()
            ans = cmd.ExecuteNonQuery
            cn.Close()
            MsgBox("No of Records are : " & ans)
            GridView3.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Try
            cn.Open()
            Dim str As String
            str = "Select * from staf where employee_id=" & txtEmployeeId.Text & " "
            Dim cmd As New OleDbCommand(str, cn)
            Dim dr As OleDbDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                txtEmployeeName.Text = dr.Item(1).ToString
                txtEmployeePostion.Text = dr.Item(2).ToString
                txtEmployeeSalary.Text = dr.Item(3).ToString
                txtEmployeeMoNo.Text = dr.Item(4).ToString


            End While
            GridView3.DataBind()
            cn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub



    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Try
            Dim str As String
            Dim ans As Integer
            str = "Update staf set employee_name='" & txtEmployeeName.Text & "',employee_position='" & txtEmployeePostion.Text & "',employee_salary=" & txtEmployeeSalary.Text & " where employee_id =" & txtEmployeeId.Text & "   "
            Dim cmd As New OleDbCommand(str, cn)
            cn.Open()
            ans = cmd.ExecuteNonQuery
            MsgBox("Record Updated Successfully : " & ans)
            GridView3.DataBind()
            cn.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        txtEmployeeId.Text = ""
        txtEmployeeMoNo.Text = ""
        txtEmployeeName.Text = ""
        txtEmployeePostion.Text = ""
        txtEmployeeSalary.Text = ""



    End Sub
End Class
