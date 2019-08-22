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

            if (this.Session["AJOUTER"] == null)
            { 
                this.Response.Redirect("~/superviseur.aspx");
            }

            else
            {
                bool Ajout = (bool)this.Session["AJOUTER"];
            }
       

        }

        protected void btnConfirmer_Click(object sender, EventArgs e)
        {
            BDGestionStages bdGestionStages = new BDGestionStages();
            bool Ajout = (bool)this.Session["AJOUTER"];

            if (Ajout == true)
            {
                Stage temporaire = new Stage();
                DateTime dateDebut = new DateTime();
                DateTime dateFin = new DateTime();

                temporaire.Titre = this.txtTitre.Text;

                dateDebut = DateTime.ParseExact(this.txtDebut.Text, "yyyy-MM-dd", null);
                temporaire.Début = dateDebut;

                dateFin = DateTime.ParseExact(this.txtFin.Text, "yyyy-MM-dd", null);
                temporaire.Fin = dateFin;

                temporaire.Commentaire = this.txtCommentaire.Text;

                temporaire.SupersiveurId = Convert.ToInt32(this.DrpSuperviseur.SelectedItem.Value);
                temporaire.StagiaireId = Convert.ToInt32(this.DrpStagiaire.SelectedItem.Value);

                bdGestionStages.Ajouter(temporaire, temporaire.SupersiveurId, temporaire.StagiaireId);
                bdGestionStages.Sauvegarder();

                this.Session["AJOUTER"] = null;

                this.Response.Redirect("~/superviseur.aspx");
            }

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}