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
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStringVoterDetails"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("select * from tbl_VotingCount_Group2", con);
                    using (SqlDataAdapter sqlda = new SqlDataAdapter(cmd))
                    {
                        sqlda.Fill(dt);
                    }
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogoutPage.aspx");
        }
    }
}