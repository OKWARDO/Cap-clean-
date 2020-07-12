using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Transformer : System.Web.UI.Page
{
    public bool logoutJustOccurred { get; private set; }
    protected Keymaker Cilantro
    {
        get
        {
            if (Session["Cilantro"] == null)
            {
                Session["Cilantro"] = new Keymaker();
            }
            return (Keymaker)Session["Cilantro"];
        }
    }

    private string connString =

        "Data Source=STUDENT\\SQLEXPRESS;Initial Catalog=Commercial;Integrated Security=True";

    bool Liq;
    bool Dry; string Age;  string Building;


    protected void btnGetTransformerSavings_Click(object sender, EventArgs e)
    {
        int LiqBit = Convert.ToInt16(Liq);
        Cilantro.GetTransformerSavings(cbLiq.Checked, cbDry.Checked, tbAge.Text, tbBuilding.Text);
        lblMsg.Text = "You can save up to 30% off your entire energy bill according to ASHRAE, " +
                     "the American Society of Heating Refrigeration and AirConditioning Engineers, " +
                     "by replacing your old tranformer or upgrading to a Dry Transformer! ";



    }
    protected void lbBuilding_Click(object sender, EventArgs e)
    {
        Response.Redirect("Building.aspx");
    }

    protected void lbAudit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Savings.aspx");
    }
    protected void lbtnHotWater_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotWater.aspx");
    }
    protected void lbCheckLightingControls_Click(object sender, EventArgs e)
    {
        Response.Redirect("Lighting.aspx");
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
#pragma warning disable CS8321 // Local function is declared but never used
        void btnLogout_Click()
#pragma warning restore CS8321 // Local function is declared but never used
        {
            string user = ("Comm_Con.aspx.tbclient");

            string Password = ("Comm_Con.aspx.tbcliPass");
           
            {
                
                if (Cilantro.CheckIfPassMatches( user, Password))
                {
                    Session["client"] = null;
                    Response.Redirect("Comm_Con.aspx");
                }
                Session["client"] = null;// logout by  removing session variable
                Session.Abandon();

                logoutJustOccurred = true;
                Response.Redirect("Login.aspx");

            }
        }
    }
}