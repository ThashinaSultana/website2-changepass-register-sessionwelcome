using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    object obj;
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=tempdb;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        Session["user_id"] = TextBox1.Text;
        string command = "select * from regi where user_id=@user_id and pwd=@password";
        SqlCommand cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@user_id", Session["user_id"]);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        //SqlDataReader dr = cmd.ExecuteReader();
        // obj = cmd.ExecuteScalar();
        obj = cmd.ExecuteScalar();
        if (obj != null)
        {
           Response.Redirect("Welcome.aspx");
           
        }
        else
        {
            Label4.Text = "unknown" ;
        }
        Clear();
        con.Close();
    }
    public void Clear()
    {
       
        TextBox1.Text = "";
        TextBox2.Text = "";

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}