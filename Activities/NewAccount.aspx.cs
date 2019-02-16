using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Activities
{
    public partial class NewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void button_newAccount_Click(object sender, EventArgs e)
        {
            OracleConnection connection = new OracleConnection();
            connection.ConnectionString = @"Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost )(PORT=1521)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=workshop.com)));User Id=SYS;Password=hpSS90SemihSipahi;DBA Privilege=SYSDBA";
            connection.Open();

            OracleCommand command = new OracleCommand("Insert INTO SYS.USERS(NAMEANDSURNAME,PASSWORD,FKUSERTYPEID) VALUES ('" + text_adminNameAndSurname.Text + "','" + text_adminPassword.Text + "'," + drop_userType.SelectedValue + ")", connection);
            int result = command.ExecuteNonQuery();

            if (result > 0)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}