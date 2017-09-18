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
    public partial class RegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Vote = "false";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into tbl_UserLogin_Group2 values('" + txtName.Text + "','" +
            txtUserId.Text + "','" + txtPassword.Text + "' ,'" + txtType.Text + "', '" + Vote + "')", con);
            cmd.CommandType = CommandType.Text;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
            }
            Clear();
            Response.Write("<script>alert('User registerd successully')</script>");
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }
        protected void Clear()
        {
            txtName.Text = string.Empty;
            txtUserId.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtType.Text = string.Empty;
        }
    }
}