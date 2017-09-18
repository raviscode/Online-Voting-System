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
    public partial class Vote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCandidateName.Text = Request.QueryString[0].ToString();
                //if (Session["User"] == null)
                //{
                //    Session["User"] = Session[];
                //}
            }
        }
        protected void btnVote_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString))
            {
                String user = Session["User"].ToString();
                // String query = "select vote from tbl_UserLogin_Group2 where UserName = " + user;
                SqlCommand sqlCmd = new SqlCommand("select Vote from tbl_UserLogin_Group2 where UserName =@userName ", sqlCon);
                sqlCmd.Parameters.AddWithValue("@userName", user);
                // sqlCmd.CommandType = CommandType.Text;
                sqlCon.Open();
                bool voteStatus = Convert.ToBoolean(sqlCmd.ExecuteScalar());
                if (voteStatus == true)
                {
                    btnVote.Visible = false;
                    btnVote.Enabled = false;
                    lblVoteStatus.ForeColor = System.Drawing.Color.Red;
                    lblVoteStatus.Text = "You have already voted.<br> ** You can vote only once ** ";
                }
                else
                {
                    //query = "update tbl_UserLogin_Group2 set Vote = 'true' where UserName = '" + user + "'";
                    sqlCmd = new SqlCommand("update tbl_UserLogin_Group2 set Vote = 'true' where UserName = @user", sqlCon);
                    sqlCmd.Parameters.AddWithValue("@user", user);
                    sqlCmd.CommandType = CommandType.Text;
                    int votedStatus = sqlCmd.ExecuteNonQuery();
                    if (votedStatus == 1)
                    {
                        SqlCommand cmd = new SqlCommand("proc_Voting", sqlCon);
                        cmd.CommandType = CommandType.StoredProcedure;
                        int result = 0;
                        cmd.Parameters.AddWithValue("@CandidateName", lblCandidateName.Text);
                        //sqlCmd.Parameters.AddWithValue("@result", result);
                        //SqlParameter inParamUserName = new SqlParameter("@CandidateName", lblCandidateName.Text);
                        SqlParameter outParamResult = new SqlParameter("@result", result);
                        //inParamUserName.Direction = ParameterDirection.Input;
                        outParamResult.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(outParamResult);
                        cmd.ExecuteNonQuery();
                        result = Convert.ToInt32(outParamResult.Value);
                        if (result == 1)
                        {
                            lblVoteStatus.ForeColor = System.Drawing.Color.Green;
                            lblVoteStatus.Text = "Congratulations. You have voted successfully!!";
                            lblCandidateName.Visible = false;
                            btnVote.Visible = false;
                            btnVote.Enabled = false;
                        }
                        else
                        {
                            lblVoteStatus.ForeColor = System.Drawing.Color.Red;
                            lblVoteStatus.Text = "Sorry. Voting Unsuccessfull.Please try again!!";
                        }
                    }
                    Session.Abandon();
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}