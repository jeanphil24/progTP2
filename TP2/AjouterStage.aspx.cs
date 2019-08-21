using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class modifierStage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sessionUtilisateur session = (sessionUtilisateur)this.Session["USER"];

            if ((this.Session["USER"] == null) || (session.m_niveau != 2))
            {
                this.Response.Redirect("~/Default.aspx");
            }
        }

        protected void btnConfirmer_Click(object sender, EventArgs e)
        {
            BDGestionStages bdGestionStages = new BDGestionStages();
            Stage stage = new Stage();
            DateTime dateDebut = new DateTime();
            DateTime dateFin = new DateTime();

            stage.Titre = this.txtTitre.Text;

            dateDebut = DateTime.ParseExact(this.txtDebut.Text, "yyyy-MM-dd", null);
            stage.Début = dateDebut;

            dateFin = DateTime.ParseExact(this.txtFin.Text, "yyyy-MM-dd", null);
            stage.Fin = dateFin;

            stage.Commentaire = this.txtCommentaire.Text;

            //stage.Superviseur = this.DrpSuperviseur.Text;
            //stage.Stagiaire = this.DrpStagiaire.Text;

            //bdGestionStages.Ajouter(Stage p_Stage, int p_SuperviseurId, int p_StagiaireId)

            this.Response.Redirect("~/superviseur.aspx");

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}