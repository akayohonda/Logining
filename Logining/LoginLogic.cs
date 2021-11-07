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
    public class LoginLogic
    {
        public static Dictionary<string,string> GetDict()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(connectionString);

            sqlConnection.Open();

            Dictionary<string, string> db = new Dictionary<string, string>();

            SqlCommand getUsersCmd = new SqlCommand("SELECT [Login], [Password] FROM [User]", sqlConnection);

            SqlDataReader sqlReader = null;


            try
            {
                sqlReader = getUsersCmd.ExecuteReader();

                while (sqlReader.Read())
                {
                    db.Add(Convert.ToString(sqlReader["Login"]), Convert.ToString(sqlReader["Password"]));
                }
            }
            catch { }
            finally
            {
                if (sqlReader != null)
                    sqlReader.Close();
            }

            return db;
        }
    }
}