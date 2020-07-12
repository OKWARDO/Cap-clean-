using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Savings : System.Web.UI.Page
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

    public IEnumerable<string> buildings { get; private set; }

    private string connString =

        "Data Source=STUDENT\\SQLEXPRESS;Initial Catalog=Commercial;Integrated Security=True";
    protected void btnLogin_Click(object sender, EventArgs e)

    {

        string user = tbclient.Text;
        string pass = tbcliPass.Text;


#pragma warning disable CS0252 // Possible unintended reference comparison; left hand side needs cast
        if (Session["user"] != user)
#pragma warning restore CS0252 // Possible unintended reference comparison; left hand side needs cast

            if (Cilantro.CheckIfBuildingExists(user))
            {


                if (Cilantro.CheckIfBPassMatches(user, pass))

                {

#pragma warning disable CS0252 // Possible unintended reference comparison; left hand side needs cast
                    Session["user"] = user; Session["Password"] = pass;
#pragma warning restore CS0252 // Possible unintended reference comparison; left hand side needs cast
                    {
                       
                        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                       
                        
                        List<string> buildings = Cilantro.GetBuildings(user);
                      
                        foreach (string audit in buildings)
                        {
                            Response.Write(audit + "<br/>");
                        }
                       
                        
                        lblMsg.Text = "You can save up to 30% off your entire energy bill according to ASHRAE, " +
                     "the American Society of Heating Refrigeration and AirConditioning Engineers, " +
                     "by replacing your old furnace, optimizing or replacing lighting controls, or replacing Transformers and Hot Water Heaters! " +
                     "Our experts will contact you without obligation about your needs";
                       
                    }
                }

                else
                {
                    lblmes.Text = "Bad Password";
                }

            }


            else
            {
                lblmes.Text = "No such user exists";
            }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        lblmes.Text = " ";
       
    }
   
    protected void Page_PreRender(object sender, EventArgs e)
    {
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