using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HaifCredito
{
    public partial class Default : Page
    {

        #region Preliminares
        string versionSitio = ConfigurationManager.AppSettings["SiteVersion"];
        string nombreApp = ConfigurationManager.AppSettings["SiteName"];
        string ownerSitio = ConfigurationManager.AppSettings["Owner"];
        string developerSitio = ConfigurationManager.AppSettings["Developer"];
        string developerUrlSitio = ConfigurationManager.AppSettings["DeveloperUrl"];
        #endregion

        #region Carga
        protected void Page_Load(object sender, EventArgs e)
        {
            #region head
            HtmlMeta metaAuthor = new HtmlMeta();
            HtmlMeta metaDescription = new HtmlMeta();
            HtmlMeta metaKeywords = new HtmlMeta();

            metaAuthor.Name = "author";
            metaAuthor.Content = developerSitio;

            metaDescription.Name = "description";
            metaDescription.Content = nombreApp + ", desarrollado para " + ownerSitio + " - Una tecnología de " + developerSitio;

            metaKeywords.Name = "keywords";
            metaKeywords.Content = metaDescription.Content + ", " + metaAuthor.Content + ", tecnología, desarrollo";

            Page.Header.Controls.Add(metaAuthor);
            Page.Header.Controls.Add(metaDescription);
            Page.Header.Controls.Add(metaKeywords);
            Page.Header.Title = nombreApp + " | " + ownerSitio;
            #endregion

            #region Paneles
            panelResultado.Visible = false;
            #endregion
        }
        #endregion

        #region Calcular
        protected void btnCalcularAxn (object sender, EventArgs e)
        {
            try
            {

                panelResultado.Visible = true;
                panelForm.Visible = false;

                double k = Convert.ToDouble(tbMonto.Text);
                double i = (Convert.ToDouble(tbTasa.Text))/100;
                double n = Convert.ToDouble(tbPlazo.Text);
                double q = 0;

                q = (i * Math.Pow((1 + i), n)) * k / (double)((Math.Pow((1 + i), n)) - 1);

                cuotaPrint.Text = string.Format("{0:##,###.##}", q);
                double kAc = 0;

                double intTotal = 0;

                for (int amtz = 1; amtz <= n; amtz = amtz + 1)
                {

                    double m = amtz;
                    double q1 = q - (k * i);
                    double qP =  (Math.Pow((1 + i), (m - 1))) * q1;

                    kAc += qP;
                    double kDd = k - kAc;

                    string cuota = amtz.ToString();
                    string pago = string.Format("{0:##,###.##}", q);
                    string intereses = string.Format("{0:##,###.##}", q - qP);
                    string capital = string.Format("{0:##,###.##}", qP);
                    string saldo = string.Empty;

                    if (kDd == 0)
                    {
                        saldo = "0";
                    }
                    else
                    {
                        saldo = string.Format("{0:##,###.##}", kDd);
                    }

                    printTablaAmortz.Text += "<div class='Col100'><div class='splitter100'></div></div>" +
                                "<div class='Col96wp4'><div class='Col100'>" +
                                    "<div class='Col8-sm'><span class='textoNegroSm'>#" + cuota + "</span></div><div class='Col2-sm'></div>" +
                                    "<div class='Col20-sm'><span class='textoVerdeSm spanFull textoDerecha'>$" + capital + "</span></div><div class='Col2-sm'></div>" +
                                    "<div class='Col20-sm'><span class='textoRojoSm spanFull textoDerecha'>$" + intereses + "</span></div><div class='Col2-sm'></div>" +
                                    "<div class='Col20-sm'><span class='textoAzul2Sm spanFull textoDerecha'> $" + pago + "</span></div><div class='Col2-sm'></div>" +
                                    "<div class='Col24-sm'><span class='textoFucsiaSm spanFull textoDerecha'>$" + saldo + "</span></div>" +
                                "</div></div>";

                    intTotal += (q - qP);
                    
                }

                printMontoSolicitado.Text = "$" + string.Format("{0:##,###.##}", k);
                printTasaInteres.Text = string.Format("{0:##,###.##}", i * 100) + "%";
                printPlazo.Text = n + " meses (" + string.Format("{0:##,###.##}", n / 12) + " años)";

                printCuotaMensual.Text = "$" + string.Format("{0:##,###.##}", q);
                printInteresesPagados.Text = "$" + string.Format("{0:##,###.##}", intTotal);
                printTotalPagado.Text = "$" + string.Format("{0:##,###.##}", intTotal + k);

            }
            catch (Exception ex)
            {
                cuotaPrint.Text = ex.ToString();
            }
        }
        #endregion
    }
}