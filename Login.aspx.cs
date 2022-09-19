using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (usertxt.Text == "Admin" && passtxt.Text == "Admin@1122")
        {
            Response.Redirect("http://localhost:49677/lawyersapplication/Homepage.aspx");

        }
        else
        {
            errorlbl.Text = "invalid username password";
        }
    }
}