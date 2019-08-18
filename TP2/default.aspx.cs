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

                bool verificationNom = false;
                bool verificationMotDePasse = false;
                string redirection = "";
                int niveauPrivilege = 0;

                if ( (this.radio_typeUsager.Text == "Stagiaire") && (this.txt_usager.Text != "") ) {

                    Stagiaire courant = bd.GetStagiaire( this.txt_usager.Text );

                    if ( courant != null ) {

                        redirection = "stagiaire";
                        niveauPrivilege = 3;

                        if ( courant.NomUtilisateur == this.txt_usager.Text ) {
                            verificationNom = true;
                        }
                        if ( courant.MotDePasse == this.txt_motDePasse.Text ) {
                            verificationMotDePasse = true;
                        }
                    }
                        
                }
                if ( (this.radio_typeUsager.Text == "Superviseur") && (this.txt_usager.Text != "") ) {

                    Superviseur courant = bd.GetSuperviseur(this.txt_usager.Text);

                    if ( courant != null ) {

                        redirection = "superviseur";
                        niveauPrivilege = 2;

                        if ( courant.NomUtilisateur == this.txt_usager.Text ) {
                            verificationNom = true;
                        }
                        if ( courant.MotDePasse == this.txt_motDePasse.Text ) {
                            verificationMotDePasse = true;
                        }
                    }
                }
                if ( (this.radio_typeUsager.Text == "Administrateur") && (this.txt_usager.Text != "")) {

                    Administrateur courant = bd.GetAdministrateur();

                    if ( courant != null ) {

                        redirection = "administrateur";
                        niveauPrivilege = 1;

                        if ( courant.NomUtilisateur == this.txt_usager.Text ) {
                            verificationNom = true;
                        }
                        if ( courant.MotDePasse == this.txt_motDePasse.Text ) {
                            verificationMotDePasse = true;
                        }
                    }
                }

                // redirection si les 2 champs sont valides
                if ( verificationNom && verificationMotDePasse ){
                    this.Session["USER"] = new sessionUtilisateur(this.txt_usager.Text, niveauPrivilege);
                    this.Response.Redirect("~/" + redirection + ".aspx");
                }

                // messages d'erreurs
                if ( this.txt_usager.Text == "" ) { // user est vide
                    this.lit_usager.Text = "Le champ ne peut pas être vide";
                    this.lit_motDePasse.Text = "";
                }
                else {
                    if ( !verificationNom ) { // user n'est pas ok

                        this.lit_usager.Text = "Nom d'usager non valide";
                        this.lit_motDePasse.Text = "";
                    }
                    else {
                        this.lit_usager.Text = "";

                        if ( this.txt_motDePasse.Text == "" ) { // mot de passe vide

                            this.lit_motDePasse.Text = "Le champ ne peut pas être vide";
                        }
                        else if ( !verificationMotDePasse ) { // mot de passe pas ok

                            this.lit_motDePasse.Text = "Mot de passe non valide";
                        }
                    }
                    
                }
                
            }
        }
        
    }
}