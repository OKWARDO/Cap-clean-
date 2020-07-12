using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
  
using System.Data;
using System.Data.SqlClient;
using System.Data.SQLite;



public partial class Comm_Con : System.Web.UI.Page
{
    private string NotVisible;

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

    public string Pass { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Session["user"] = null;

        if (Session["profiles"] == null)
        {
            Dictionary<string, Profile> profiles = new Dictionary<string, Profile>();
            Profile p = new Profile("jward", "turkey", " James ", "Ward",
                " jward@gmail.com ", " MM ");
            profiles.Add("jward", p);
            Session["profiles"] = profiles;
        }

        lblmes.Text = " ";
    }



    protected void btnLogin_Click(object sender, EventArgs e)

    {

        string user = tbclient.Text;
        string pass = tbcliPass.Text;


#pragma warning disable CS0252 // Possible unintended reference comparison; left hand side needs cast
        if (Session["user"] != user)
#pragma warning restore CS0252 // Possible unintended reference comparison; left hand side needs cast

            if (Cilantro.CheckIfUserExists(user))
        {
            

            if (Cilantro.CheckIfPassMatches(user, pass))
                
            {

#pragma warning disable CS0252 // Possible unintended reference comparison; left hand side needs cast
                    Session["user"] = user; Session["Password"] = pass;
#pragma warning restore CS0252 // Possible unintended reference comparison; left hand side needs cast
                {
                    Response.Redirect("Building.aspx");
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

  


protected void Page_PreRender(object sender, EventArgs e)
{
        
}

protected void lbGoRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }




    protected void lbProceed_Click(object sender, EventArgs e)
    {
       // ("Building.aspx.btnLogout") = NotVisible;
        Response.Redirect("Building.aspx");
    }

   

    protected void tbcliPass_TextChanged(object sender, EventArgs e)
    {

    }
}

 
    
