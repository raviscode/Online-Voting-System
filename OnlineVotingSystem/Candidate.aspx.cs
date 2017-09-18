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
    public partial class Candidate : System.Web.UI.Page
    {
        DataTable dtl;
        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dtl = new DataTable();

            sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString);
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("select Name,Party from tbl_CandidateRegistration_Group2", sqlCon);
                sda.Fill(dtl);
            }
            catch (SqlException)
            {
                dtl = null;
            }
            catch (Exception)
            {
                dtl = null;
            }
            finally
            {
            }
            gdvVotingPage.DataSource = dtl;
            gdvVotingPage.DataBind();
            Session["GridView"] = dtl;
        }

        protected void gdvVotingPage_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdvVotingPage.PageIndex = e.NewPageIndex;
            dtl = (DataTable)Session["GridView"];
            gdvVotingPage.DataSource = dtl;
            gdvVotingPage.DataBind();
        }

        protected void gdvVotingPage_PreRender(object sender, EventArgs e)
        {
            lblPaging.Text = "Displaying page" + (gdvVotingPage.PageIndex + 1).ToString() + "of" + (gdvVotingPage.PageCount).ToString();
        }

        protected void gdvVotingPage_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Name")
            {
                string id = e.CommandArgument.ToString();
                Response.Redirect("Vote.aspx?id=" + id);

            }
        }

        protected void btnCandidate_Click(object sender, EventArgs e)
        {
            dtl = new DataTable();

            sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString);
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("select Name,Party from tbl_CandidateRegistration_Group2", sqlCon);
                sda.Fill(dtl);
            }
            catch (SqlException)
            {
                dtl = null;
            }
            catch (Exception)
            {
                dtl = null;
            }
            finally
            {
            }
            gdvVotingPage.DataSource = dtl;
            gdvVotingPage.DataBind();
            Session["GridView"] = dtl;

        }  
    }
}