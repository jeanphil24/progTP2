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
            BDGestionStages bDGestionStages = new BDGestionStages();

            if (!this.IsPostBack &&
                (this.Session["USER"] == null))
            {
                this.Response.Redirect("~/Default.aspx");
            }


            if (!this.IsPostBack)
            {
                IQueryable<Stagiaire> stagiaires = bDGestionStages.GetAllStagiaires();

                foreach(Stagiaire stagiaire in stagiaires)
                {
                    this.litNom.Text = stagiaire.Nom;
                    this.litTel.Text = stagiaire.Téléphone;
                    this.litMatricule.Text = stagiaire.Id.ToString();
                    this.litCourriel.Text = stagiaire.Courriel;
                }            
            }
        }
    }
}