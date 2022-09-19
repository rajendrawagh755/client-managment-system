using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Empoyeefrm : System.Web.UI.Page
{
    string gender;
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataAdapter dad = new OleDbDataAdapter();
    public DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        Txtsysdate.Text =DateTime.Today.ToShortDateString();
        if (!IsPostBack)
        {
            generateAutoId();
        }
    
        con.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd.Connection = con;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TxtEName.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }
        if (TxtDob.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }
        if (TxtEMail.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }
      if (TxtContact.Text == "")
        {
           raj.Text = "blank Not allowed";
            return;
        }
      if (TxtDesignation.Text == "")
      {
          raj.Text = "blank Not allowed";
          return;
      }
      if (TxtQualification.Text == "")
      {
          raj.Text = "blank Not allowed";
          return;
      }
      if (TxtEAddress.Text == "")
      {
          raj.Text = "blank Not allowed";
          return;
      }

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
        String SQL = "insert into Employeetbl values(" + TxtEmployeeid.Text+ ",'" + TxtEName.Text + "','" + TxtEAddress.Text + "','" + TxtContact.Text + "'+ gender + '" + TxtDesignation.Text + "','" + TxtQualification.Text + "','" + TxtEMail.Text + "','" + TxtDob.Text + "')";
        try
        {
            con.Open();
            cmd.CommandText = SQL;
            cmd.ExecuteNonQuery();
            raj.Text = "Inserted Successfully";

        }
        catch (Exception)
        {
            con.Close();
        }
    }
public void generateAutoId()
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "Select max (Employeeid) from Employeetbl";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        TxtEmployeeid.Text = i.ToString();

    }



    }
