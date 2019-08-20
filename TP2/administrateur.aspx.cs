using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class administrateur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sessionUtilisateur session = (sessionUtilisateur)this.Session["USER"];

            if ( (session == null) || (session.m_niveau != 1) ) {
                this.Response.Redirect("~/default.aspx");
            }
            else {
                lit_titre.Text = "Bienvenue " + session.m_nom;
                lit_titrePage.Text = "Page de l'administrateur : " + session.m_nom;

                if (this.Session["MESSAGEAJOUT"] != null) {

                    lit_messageAjout.Text = "<p>" +  (string)this.Session["MESSAGEAJOUT"] + "</p>";
                    this.Session["MESSAGEAJOUT"] = null;
                }
            }
        }

        protected void btn_ajouterStagiaire_Click(object sender, EventArgs e) {

            //parametre de session pour stagiaire
            this.Session["AJOUTER"] = 1;
            this.Response.Redirect("~/ajouterPersonnel.aspx");
        }

        protected void btn_ajoutSuperviseur_Click(object sender, EventArgs e)
        {
            //parametre de session pour superviseur
            this.Session["AJOUTER"] = 2;
            this.Response.Redirect("~/ajouterPersonnel.aspx");
        }
    }
}