using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 

public partial class clientfrm : System.Web.UI.Page
{
    string gender;
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataAdapter dad = new OleDbDataAdapter(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            generateAutoId();
        }

        con.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd.Connection = con; 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
        if (mrbtn.Checked == true)
        {
            gender = "Male";
        }
        else if (frbtn.Checked == true)
        {
            gender = "Female";
        }
        con.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";

        cmd.Connection = con;
        String SQL = "insert into Clienttbl values(" + TxtClientID.Text + ",'" + TxtCName.Text + "','" + gender + "','"+Txtage.Text+"','" + TxtEMail.Text + "','" + TxtCAddress.Text + "','" + TxtContact.Text + "','" + TxtIDproof.Text + "'," + 0 + ")";
        try
        {
            con.Open();
            cmd.CommandText = SQL;
            cmd.ExecuteNonQuery();
            raj.Text = "Inserted Successfully";

        }
        catch (Exception )
        {
            con.Close();
        }
    }
        public void generateAutoId()
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "Select max (ClientID) from ClientTBL";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        TxtClientID.Text = i.ToString();

    }


    }
