using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class changepass : System.Web.UI.Page
{
    byte up;
    object obj;
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=tempdb;Integrated Security=True;Pooling=False");
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
      
             Label1.Text = "WELLCOME :: " + Session["user_id"];
       


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();


        string command = "Select * from regi where user_id='" + Session["user_id"].ToString() + "'and pwd=@password";
        SqlCommand cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@password", TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            if (TextBox1.Text == dr["Pwd"].ToString())
            {
                up = 1;
            }


        }
        dr.Close();
        con.Close();
        String newpassword = TextBox2.Text;
        String ConfirmPassword = TextBox3.Text;
        if (newpassword == ConfirmPassword)
        {
            if (up == 1)
            {
                con.Open();

                string command1 = "update regi set Pwd= '" + TextBox2.Text + "'where user_id='" + Session["user_id"].ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(command1, con);

                cmd1.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Password changed Successfully";

               // Response.Redirect("Default.aspx");
                con.Close();

            }




            else
                Label4.Text = "incorrect username or password!!!";

        }
        else
        {
            Label4.Text = "incorrect not similar";
        }

    }

}