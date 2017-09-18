using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineVotingSystem
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString);
            SqlCommand cmd;
            using (sqlCon)
            {
                sqlCon.Open();
                string typee = string.Empty;
                cmd = new SqlCommand("proc_login", sqlCon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                SqlParameter outParamResult = new SqlParameter("@Typee", typee);
                outParamResult.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(outParamResult);
                outParamResult.SqlDbType = SqlDbType.VarChar;
                cmd.ExecuteNonQuery();
                typee = Convert.ToString(outParamResult.Value);

                if (typee == "u")
                {
                    Session["User"] = txtUserName.Text;
                    Response.Redirect("~/Candidate.aspx");
                }
                else if (typee == "a")
                {
                    Session["User"] = txtUserName.Text;
                    Response.Redirect("~/Admin.aspx");
                }
                else
                {

                    Response.Write("<script> alert('Invalid username and password !!')</script>");
                }
            }
        }
    }
}