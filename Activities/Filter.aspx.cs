using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Activities
{
    public partial class Filter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var s = Session["FILTER"];
                repeater_filter.DataSource = s;
                repeater_filter.DataBind();
            }
        }

        protected void button_filter_Click(object sender, EventArgs e)
        {

        }
    }
}