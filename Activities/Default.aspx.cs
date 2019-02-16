using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess;
using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace Activities
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var isMember = SessionHelper.CheckMember();

                if (!isMember)
                {
                    HideSearchActivityContent();
                }

                OracleConnection connection = new OracleConnection();
                connection.ConnectionString = @"Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost )(PORT=1521)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=workshop.com)));User Id=SYS;Password=*****;DBA Privilege=SYSDBA";

                var cmd = connection.CreateCommand();

                connection.Open();

                cmd.CommandText = "SELECT * FROM REALYACTIVITIES";

                var adap = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();

                adap.Fill(ds);

                repeater_activities.DataSource = ds;
                repeater_activities.DataBind();
            }
        }

        protected void button_searchActivity_Click(object sender, EventArgs e)
        {
            string searchedValue = text_searchActivityName.Text;
            {
                SetSearchedActivityName(searchedValue);

                OracleConnection connection = new OracleConnection();
                connection.ConnectionString = @"Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost )(PORT=1521)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=workshop.com)));User Id=SYS;Password=*****;DBA Privilege=SYSDBA";

                var cmd = connection.CreateCommand();

                connection.Open();

                cmd.CommandText = "Select* From REALYACTIVITIES WHERE CREATEDAT >= TO_DATE('" + text_searchActivityStartDate.Text + "', 'DD-MM-YYYY') AND CREATEDAT <= TO_DATE('" + text_searchActivityEndDate.Text + "', 'DD-MM-YYYY')";

                var adap = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();

                adap.Fill(ds);

                Session["FILTER"] = ds;

                Response.Redirect("Filter.aspx");
            }
        }

        void HideSearchActivityContent()
        {
            div_searchActivityContent.Visible = false;
        }

        void SetSearchedActivityName(string searchedActivityName)
        {
            h3_searchedActivityName.InnerText = searchedActivityName;
        }
    }
}