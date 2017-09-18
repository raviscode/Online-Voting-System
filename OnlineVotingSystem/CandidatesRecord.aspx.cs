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
    public partial class CandidatesRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString))
                {
                    SqlCommand sqlCmd = new SqlCommand("select * from tbl_CandidateRegistration_Group2", sqlCon);
                    using (SqlDataAdapter da = new SqlDataAdapter(sqlCmd))
                    {
                        da.Fill(dt);
                    }
                }
                gvCandidate.DataSource = dt;
                gvCandidate.DataBind();
            }
        }
    }
}