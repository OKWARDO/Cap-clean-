using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lighting : System.Web.UI.Page
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

    bool ZoneExt;
    bool ZoneInt; bool MotExt; bool MotInt; string Building;


    protected void btnGetLightingSavings_Click(object sender, EventArgs e)
    {
        int ZoneExtBit = Convert.ToInt16(ZoneExt);
        Cilantro.GetLightingSavings(cbZoneExt.Checked, cbZoneInt.Checked, cbMotExt.Checked, cbMotInt.Checked, tbBuilding.Text);
        lblMsg.Text = "You can save up to 15% off your entire energy bill with Energy saving light bulbs, according to ASHRAE, " +
                     "the American Society of Heating Refrigeration and AirConditioning Engineers, " +
                     "or by replacing your old Lighting System or optimizing timers on current system! " +
                     "One of our experts will consult with you with no initial cost";



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
    protected void lbtnTransformer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Transformer.aspx");
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
#pragma warning disable CS8321 // Local function is declared but never used
        void btnLogout_Click()
#pragma warning restore CS8321 // Local function is declared but never used
        {
            string user = ("Comm_Con.aspx.tbclient");

            string pass = ("Comm_Con.aspx.tbcliPass");
            
            {
                
                if (Cilantro.CheckIfPassMatches( user, pass))
                {
                    Session["client"] = null;
                    Response.Redirect("Comm_Con.aspx");
                }
                Session["client"] = null;// logout by  removing session variable
                Session.Abandon();

                logoutJustOccurred = true;
                Response.Redirect("Comm_Con.aspx.aspx");

            }
        }
    }



    protected void Page_Load(object sender, EventArgs e)
    {

    }

}
