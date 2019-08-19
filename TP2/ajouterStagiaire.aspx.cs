using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class ajouterStagiaire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sessionUtilisateur session = (sessionUtilisateur)this.Session["USER"];

            if ( (session == null) || (session.m_niveau != 1) )
            {
                this.Response.Redirect("~/default.aspx");
            }
        }
    }
}