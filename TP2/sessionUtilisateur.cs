using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP2
{
    public class sessionUtilisateur
    {
        public string m_nom {get; set;}
        public int m_niveau { get; set; }
        public sessionUtilisateur(string p_nom, int p_niveau ) {
            this.m_nom = p_nom;
            this.m_niveau = p_niveau;
        }
    }
}