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

            if ( (session == null) || (session.m_niveau != 1) ) {

                this.Response.Redirect("~/default.aspx");
            }
            if ( this.Session["AJOUTER"] == null ) { // au cas ou un admin tape la page dans la barre URL

                this.Response.Redirect("~/administrateur.aspx");
            }
            else {
                int choixAjout = (int)this.Session["AJOUTER"];

                if (choixAjout == 1) {
                    lit_titre.Text = "Ajouter un stagiaire";
                    lit_titrePage.Text = "Page d'ajout d'un stagiaire";
                }
                if (choixAjout == 2) {
                    lit_titre.Text = "Ajouter un superviseur";
                    lit_titrePage.Text = "Page d'ajout d'un superviseur";
                }
            }
        }

        protected void btn_confirmer_Click(object sender, EventArgs e)
        {
            BDGestionStages bd = new BDGestionStages();
            int choixAjout = (int)this.Session["AJOUTER"];

            if (choixAjout == 1) {

                Stagiaire temporaire = new Stagiaire();

                temporaire.Id = Convert.ToInt32(txt_matricule.Text);
                temporaire.Nom = txt_nom.Text;
                temporaire.NomUtilisateur = txt_nomUtilisateur.Text;
                temporaire.Téléphone = txt_telephone.Text;
                temporaire.Courriel = txt_courriel.Text;
                temporaire.MotDePasse = txt_motDePasse.Text;

                // on ajoute à la BD
                bd.Ajouter(temporaire);
                // mise a jour de la BD
                bd.Sauvegarder();
                // message pour la page admin
                this.Session["MESSAGEAJOUT"] = "Le stagiaire " + txt_nom.Text + " a été ajouté avec succès !";
            }
            if (choixAjout == 2) {

                Superviseur temporaire = new Superviseur();

                temporaire.Id = Convert.ToInt32(txt_matricule.Text);
                temporaire.Nom = txt_nom.Text;
                temporaire.NomUtilisateur = txt_nomUtilisateur.Text;
                temporaire.Téléphone = txt_telephone.Text;
                temporaire.Courriel = txt_courriel.Text;
                temporaire.MotDePasse = txt_motDePasse.Text;

                // on ajoute à la BD
                bd.Ajouter(temporaire);
                // mise a jour de la BD
                bd.Sauvegarder();
                // message pour la page admin
                this.Session["MESSAGEAJOUT"] = "Le superviseur " + txt_nom.Text + " a été ajouté avec succès !";
            }
            
            // on vide le parametre pour que l'utilisateur ne puisse pas revenir par l'URL
            this.Session["AJOUTER"] = null;
            // retour vers la page d'admin
            this.Response.Redirect("~/administrateur.aspx");
        }
    }
}