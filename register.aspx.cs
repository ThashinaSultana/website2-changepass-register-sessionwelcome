using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlCommand cmd1;
    SqlDataReader dr1;
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=tempdb;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String password = TextBox2.Text;
        String ConfirmPassword = TextBox3.Text;
        if(password== ConfirmPassword)
        {
            con.Open();

            string command = "insert into regi  values('"+TextBox5.Text+ "','" + TextBox1.Text + "' ,'" + TextBox2.Text + "','" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(command, con);
            try
            {
                cmd.ExecuteNonQuery();
                Label7.Text = "Registered";
            }
            catch(Exception)
            {
                Label7.Text = " not Registered";
            }
           

            //Response.Redirect("Default.aspx");
            con.Close();
        }
        else
        {
            Label5.Text = " Password doesnt match!!!";
        }

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}