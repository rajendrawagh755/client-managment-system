using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 

public partial class Recieptfrm : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataAdapter dad = new OleDbDataAdapter();
    OleDbConnection con100 = new OleDbConnection();
    OleDbCommand cmd100 = new OleDbCommand();
   

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
        if (TxtRdate.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }
        if (TxtClientID.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }


        if (TxtCName.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }


        if (Txtfee.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }


        if (TxtRamt.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }
        if (TxtTotalfee.Text == "")
        {
            raj.Text = "blank Not allowed";
            return;
        }
     
     
     
     
     
     
     
     
     

        con.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd.Connection = con;
        String SQL = "insert into Receiptbl values("+TxtRecieptno.Text+",'"+TxtRdate.Text+"',"+TxtClientID.Text+",'"+TxtCName.Text+"',"+TxtRamt.Text+","+TxtTotalfee.Text+" )";
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

        con100.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd100.Connection = con100;
        double amt = Convert.ToDouble(TxtTotalfee.Text);
       
        string SQL3 = "update clienttbl SET Fee=" + amt + " WHERE ClientID=(" +TxtClientID.Text+ ")";
        try
        {
            con100.Open();
            cmd100.CommandText = SQL3;
            cmd100.ExecuteNonQuery();
        }
        catch (Exception )
        {
            con100.Close();
        }

        
}

public void generateAutoId()
    {
        con.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "Select max (Receiptno) from Receiptbl";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        TxtRecieptno.Text= i.ToString();

    }

protected void LinkButton1_Click(object sender, EventArgs e)
{
    string SQL = null;
    SQL = "Select * from Clienttbl where ClientID  =" + TxtClientID.Text;

    System.Data.OleDb.OleDbDataAdapter DA = new
    System.Data.OleDb.OleDbDataAdapter(SQL, con);

    System.Data.DataSet DS = new System.Data.DataSet();

    DA.Fill(DS, "Tbl1");

    System.Data.DataRow RW;

    RW = DS.Tables["Tbl1"].Rows[0];
    TxtCName.Text = RW["CName"].ToString();
    Txtfee.Text = RW["Fee"].ToString();

    RW = null;
    DA = null;
    DS = null;

}
protected void LinkButton2_Click(object sender, EventArgs e)
{
    double fee = Convert.ToDouble(Txtfee.Text);
    double ramt = Convert.ToDouble(TxtRamt.Text);
    double tamt = fee + ramt;
    TxtTotalfee.Text = tamt.ToString();
}
}

    
    
