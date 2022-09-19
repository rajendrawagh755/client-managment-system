using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Casefrm : System.Web.UI.Page
{
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
        con.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";

        cmd.Connection = con;
        String SQL = "insert into Casetbl values(" + Txtcaseid.Text+ ",'" + Txtctitle.Text + "','" + Txtcdate.Text + "','" + Txtcasehdl.Text + "','" + Txtincidate.Text + "','" + Txtplace.Text + "','" + Txtpolicestn.Text + "','" + Txtdescp.Text + "','" + Txtrem.Text + "'," + Txtclientid.Text + ",'" + TxtCName.Text+ "','" + TxtCourtname.Text +"','" + TxtVsparty.Text +"')";
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
        cmd.CommandText = "Select max (caseid) from Casetbl";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        Txtcaseid.Text = i.ToString();

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string SQL = null;
        SQL = "Select * from Clienttbl where ClientID  =" + Txtclientid.Text;

        System.Data.OleDb.OleDbDataAdapter DA = new
        System.Data.OleDb.OleDbDataAdapter(SQL, con);

        System.Data.DataSet DS = new System.Data.DataSet();

        DA.Fill(DS, "Tbl1");

        System.Data.DataRow RW;

        RW = DS.Tables["Tbl1"].Rows[0];
        TxtCName.Text= RW["CName"].ToString();
        
        RW = null;
        DA = null;
        DS = null;

    }
}
