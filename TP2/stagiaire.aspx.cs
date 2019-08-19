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
            sessionUtilisateur local = (sessionUtilisateur)this.Session["USER"];

            if (local == null || local.m_niveau != 3) {

                this.Response.Redirect("~/default.aspx");
            }
            else {

                Stagiaire stagiaire = bd.GetStagiaire(local.m_nom);
                litNom1.Text = local.m_nom;
                litNom2.Text = local.m_nom;
                litTelephone.Text = stagiaire.Téléphone;
                litMatricule.Text = stagiaire.Id.ToString();
                litCourriel.Text = stagiaire.Courriel;
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