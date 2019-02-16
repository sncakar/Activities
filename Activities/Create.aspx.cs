using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Activities
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void button_createActivity_Click(object sender, EventArgs e)
        {
            OracleConnection connection = new OracleConnection();
            connection.ConnectionString = @"Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost )(PORT=1521)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=workshop.com)));User Id=SYS;Password=hpSS90SemihSipahi;DBA Privilege=SYSDBA";
            connection.Open();

            string query = "INSERT INTO REALYACTIVITIES(FKTYPE, NAME, PRICE, QUOTA, STARTDATE, ENDDATE,CREATEDAT)VALUES(" + drop_activities.SelectedValue + ", '" + text_name.Text + "', '" + text_price.Text + "', '" + text_quota.Text + "', TO_DATE('" + text_startDate.Text + "', 'DD-MM-YYYY'), TO_DATE('" + text_endDate.Text + "', 'DD-MM-YYYY'),SYSDATE)";

            OracleCommand command = new OracleCommand(query, connection);

            int result = command.ExecuteNonQuery();

            if (result > 0)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}