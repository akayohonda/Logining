using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Logining
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Textbox1.Text == "")
                lbl.Text = "Введите логин";

            else if(Textbox2.Text == "")
                lbl.Text = "Введите пароль";

            else
            {
                string Login = Textbox1.Text;

                string Password = SignGen.GetSign(Textbox2.Text + "key");

                string connectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

                SqlConnection sqlConnection = new SqlConnection(connectionString);

                sqlConnection.Open();

                string SetUserCmd = ("INSERT INTO [User] (Login, Password) VALUES(@Login, @Password)");

                SqlCommand sqlCommand = new SqlCommand(SetUserCmd, sqlConnection);
                sqlCommand.Parameters.Add("@Login", Login);
                sqlCommand.Parameters.Add("@Password", Password);

                try
                {
                    if (sqlCommand.ExecuteNonQuery() > 0)
                    {
                        lbl.Text = string.Empty;
                        Response.Redirect("Login.aspx");
                    }
                }
                catch
                {
                    lbl.Text = "Введите уникальные логин и пароль";
                }
            }
        }
    }
}