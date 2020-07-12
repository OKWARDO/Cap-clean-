using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Building : System.Web.UI.Page
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
    protected void Page_Load(object sender, EventArgs e)

    {
    }

   


    private string connString =

         "Data Source=STUDENT\\SQLEXPRESS;Initial Catalog=Commercial;Integrated Security=True";

    bool FURNACE; bool BOILER; bool FORCEDAIR; bool CHILLER; bool STANDARD_VENT; bool ENHANCED_VENT; string BUILDING;


    protected void btnGetHeatSavings_Click(object sender, EventArgs e)
    {
       // int FurnaceBit = Convert.ToInt16(Furnace);

        Cilantro.GetHeatSavings(cbFurnace.Checked, cbBoiler.Checked, cbForcedAir.Checked, cbChiller.Checked, cbStandard.Checked, cbEnhanced.Checked, tbBUILDING.Text);
        lblMsg.Text = "You can save up to 30% off your entire energy bill according to ASHRAE, " +
                      "the American Society of Heating Refrigeration and AirConditioning Engineers, " +
                      "by replacing your old furnace! Our ventilation systems cleaning will remove mold from your system," + 
                      "and you will breathe new, clean, fresh, air. " +
                      "One of our experts will consult with you with no initial cost";


    }
    protected void lbAudit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Savings.aspx");
    }
    protected void lbtnTransformer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Transformer.aspx");
    }


    protected void lbtnHotWater_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotWater.aspx");
    }
    protected void lbCheckLightingControls_Click(object sender, EventArgs e)
    {
        Response.Redirect("Lighting.aspx");
    }
   
#pragma warning disable CS8321 // Local function is declared but never used
        protected void btnLogout_Click(object sender, EventArgs e)
#pragma warning restore CS8321 // Local function is declared but never used
        {
            string user = ("Comm_Con.aspx.tbclient");
          
            string pass = ("Comm_Con.aspx.tbcliPass");
         
            {
           
            if (Cilantro.CheckIfPassMatches(user, pass))
                {
                  Session["client"] = true;
                  Response.Redirect("Comm_Con.aspx");
                }
                Session["user"] = null;// logout by  removing session variable
                Session.Abandon();

                logoutJustOccurred = true;
                Response.Redirect("Comm_Con.aspx");

            }
        }
    }
