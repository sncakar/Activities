using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Activities
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void button_adminLogin_Click(object sender, EventArgs e)
        {
            OracleConnection connection = new OracleConnection();
            connection.ConnectionString = @"Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost )(PORT=1521)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=workshop.com)));User Id=SYS;Password=hpSS90SemihSipahi;DBA Privilege=SYSDBA";
            connection.Open();

            OracleCommand command = new OracleCommand("SELECT * From SYS.USERS WHERE NAMEANDSURNAME = '" + text_adminNameAndSurname.Text + "' AND PASSWORD = '" + text_adminPassword.Text + "'", connection);
            OracleDataAdapter adapter = new OracleDataAdapter(command);

            DataSet dataSet = new DataSet();

            adapter.Fill(dataSet);

            var userId = dataSet.Tables[0].Rows[0]["PKUSERID"].ToString();
            var type = dataSet.Tables[0].Rows[0]["FKUSERTYPEID"].ToString();

            if (!String.IsNullOrEmpty(userId))
            {
                if (Convert.ToInt32(type) == (int)UserTypeEnum.Manager)
                {
                    SessionHelper.SetAdmin(Convert.ToInt32(userId));
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}