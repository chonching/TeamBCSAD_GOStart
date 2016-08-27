using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using UMAK;
public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit(object sender, EventArgs e)
    {   //DataSet ds = new DataSet();

        string str = "";
        using (MySqlConnection con = new MySqlConnection(DAO.ConnectionString))
        {
            con.Open();
            str = "select * from user_account where email = '" + txtEmail.Text + "' and password='" + txtPassword.Text + "'";
            using (MySqlCommand cmd = new MySqlCommand(str, con))
            {
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    // Response.Redirect("page.aspx");
                    Response.Write("<script>alert('Login successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect email or password')</script>");
                }
            }
        }

    }

    protected void register(object sender, EventArgs e)
    {

        if (txtPasswordR.Text != txtConPasswordR.Text) {
            Response.Write("<script>alert('Password not match')</script>");
        }
        else { 
        int userid = 0;
        string str = "";
        using (MySqlConnection con = new MySqlConnection(DAO.ConnectionString))
        {
            str = "insert into user_account set name=@name,email=@email,password=@password,address=@address";
            using (MySqlCommand cmd = new MySqlCommand(str, con))
            {   
                using (MySqlDataAdapter da = new MySqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmailR.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPasswordR.Text.Trim());
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            string message = string.Empty;
            switch (userid)
            {
              case -1:
                   message = "Email already exists.\\nPlease choose a different Email.";
                  break;
               default:
                   message = "Registration successful.";
                    break;
         }  
            Response.Write("<script>alert('" + message + "')</script>");
        }
        }
    }
}
