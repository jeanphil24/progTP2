using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class superviseur : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            sessionUtilisateur session = (sessionUtilisateur)this.Session["USER"];

            if ((this.Session["USER"] == null) || (session.m_niveau != 2))
            {
                this.Response.Redirect("~/Default.aspx");
            }
  
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            this.Session["AJOUTER"] = true;
            this.Response.Redirect("~/AjouterStage.aspx");
        }
    }
}