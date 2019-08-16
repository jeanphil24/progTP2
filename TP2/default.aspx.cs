using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack) {

                BDGestionStages bd = new BDGestionStages();

                bool nom = false;
                bool motDePasse = false;

                if (this.radio_typeUsager.Text == "Stagiaire") {
                    // to-do
                }
                if (this.radio_typeUsager.Text == "Superviseur") {
                    // to-do
                }
                if ( this.radio_typeUsager.Text == "Administrateur" ) {

                    Administrateur admin = bd.GetAdministrateur();

                    if (admin.NomUtilisateur == this.txt_usager.Text) {
                        nom = true;
                    }
                    if (admin.MotDePasse == this.txt_motDePasse.Text){
                        motDePasse = true;
                    }
                    if ( nom && motDePasse ) {

                        this.Session["USER"] = new sessionUtilisateur( this.txt_usager.Text, 1 );
                        this.Response.Redirect("~/administrateur.aspx");
                    }
                }

                if (!nom) {
                    this.lit_usager.Text = "Nom d'usager non valide";
                }
                if (!motDePasse) {
                    this.lit_motDePasse.Text = "Mot de passe non valide";
                }
            }
        }
        
    }
}