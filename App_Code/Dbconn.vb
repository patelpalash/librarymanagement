Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Public Class Dbconn
    Private cn As SqlConnection
    Public Sub New()
        cn = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=B:\2 year 4 sem\external exam\librarymanagement\App_Data\Database.mdf;Integrated Security=True")
    End Sub
    Public Function GetTable(cm As SqlCommand) As DataTable
        cm.Connection = cn
        Try
            Dim da As New SqlDataAdapter(cm)
            Dim ds As New DataSet
            da.Fill(ds)
            Return ds.Tables(0)
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
    Public Sub ExeCommand(cm As SqlCommand)
        cm.Connection = cn
        Try
            cn.Open()
            cm.ExecuteNonQuery()

        Catch ex As Exception
            Console.WriteLine(ex)
        Finally
            cn.Close()
        End Try
    End Sub
End Class
