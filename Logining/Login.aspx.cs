using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logining
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = SignGen.GetSign(Textbox2.Text + "key");
            
            string signStr = SignGen.GetSign(Textbox1.Text + "key");

            Dictionary<string, string> db = LoginLogic.GetDict();
            if (!db.ContainsKey(Textbox1.Text) && !db.ContainsKey(password))
                Response.Redirect("InvalidLogin.aspx");

            foreach (var pair in db)
            {
                if (Textbox1.Text == pair.Key && password == pair.Value)
                {
                    HttpCookie login = new HttpCookie("login", Textbox1.Text);

                    HttpCookie sign = new HttpCookie("sign", signStr);

                    Response.Cookies.Add(login);

                    Response.Cookies.Add(sign);

                    Response.Redirect("UserPage.aspx");

                    return;
                }
            }
            Response.Redirect("InvalidLogin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}