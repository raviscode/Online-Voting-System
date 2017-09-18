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
    public partial class RegisterCandidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into tbl_CandidateRegistration_Group2 values('" + txtCandidateName.Text + "','" + txtAge.Text + "','" + txtEmployment.Text + "','" + txtAnualIncome.Text
              + "','" + txtParty.Text + "','" + txtArea.Text + "')", con);
            SqlCommand sqlCmd = new SqlCommand("proc_CandRegister", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@CandidateName", txtCandidateName.Text);
            cmd.CommandType = CommandType.Text;

            try
            {
                con.Open();
                sqlCmd.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('User registerd successully')</script>");
                con.Close();
            }

            catch (Exception ex)
            {              
            }
            Clear();
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtCandidateName.Text = string.Empty;
            txtAge.Text = string.Empty;
            txtEmployment.Text = string.Empty;
            txtParty.Text = string.Empty;
            txtAnualIncome.Text = string.Empty;
            txtArea.Text = string.Empty;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}