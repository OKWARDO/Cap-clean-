using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
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
        
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
          
            btnRegister.Visible = true;
            
            Response.Write("Please Register below and be redirected to Login for the best Energy Audit!!:<br/>");
           
            lblMsg.Text = "You will be redirected to Login Page after Registering";

        

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Cilantro.AddNewUser(tbUser.Text, tbPass.Text, tbFirst.Text, tbLast.Text, tbEmail.Text, tbBuilding.Text);
        Response.Redirect("Comm_Con");
    }
}