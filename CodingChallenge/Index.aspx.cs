using System;
using System.Web.UI.WebControls;
using CodingChallenge.Data.DataAccess;

namespace Challenge
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void BootstrapComboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var repositorio = new MockRepository().TituloRepository;
            var titulos = repositorio.GetTitulos();
            foreach (var buscoValor in titulos)
            {
                if (buscoValor.Descripcion.ToString() == BootstrapComboBox1.SelectedItem.Text.ToString())
                {
                    TableRow tituloEncontrado = new TableRow();
                    Table1.Rows.Add(tituloEncontrado);

                    TableCell id = new TableCell();
                    id.Text = buscoValor.Id.ToString();
                    tituloEncontrado.Cells.Add(id);

                    TableCell simbolo = new TableCell();
                    simbolo.Text = buscoValor.Simbolo.ToString();
                    tituloEncontrado.Cells.Add(simbolo);

                    TableCell descripcion = new TableCell();
                    descripcion.Text = buscoValor.Descripcion.ToString();
                    tituloEncontrado.Cells.Add(descripcion);

                    TableCell detalle = new TableCell();
                    detalle.Text = buscoValor.Detalle.ToString();
                    tituloEncontrado.Cells.Add(detalle);

                    TableCell tipo = new TableCell();
                    tipo.Text = buscoValor.Tipo.ToString();
                    tituloEncontrado.Cells.Add(tipo);

                    TableCell moneda = new TableCell();
                    moneda.Text = buscoValor.Moneda.ToString();
                    tituloEncontrado.Cells.Add(moneda);

                    Label1.Visible = true;
                    Table1.Visible = true;
                }
            }
        }

        protected void BootstrapComboBox1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}