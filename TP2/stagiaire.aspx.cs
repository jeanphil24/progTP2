using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class stagiaire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BDGestionStages bd = new BDGestionStages();
            if (this.Session["USER"] != null)
            {
                if (Convert.ToString(this.Session["USERLEVEL"]) == "admin")
                {
                    Administrateur user = bd.GetAdministrateur();
                    string userLevel = Convert.ToString(this.Session["USERLEVEL"]);
                }
                else if (Convert.ToString(this.Session["USERLEVEL"]) == "superviseur")
                {
                    Superviseur user = bd.GetSuperviseur(Convert.ToString(this.Session["USER"]));
                    string userLevel = Convert.ToString(this.Session["USERLEVEL"]);
                }
                else if (Convert.ToString(this.Session["USERLEVEL"]) == "stagiaire")
                {
                    Stagiaire user = bd.GetStagiaire(Convert.ToString(this.Session["USER"]));
                    string userLevel = Convert.ToString(this.Session["USERLEVEL"]);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }
    }
}