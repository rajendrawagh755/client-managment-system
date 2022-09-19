using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 


public partial class Registrationfrm : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataAdapter dad = new OleDbDataAdapter();
    protected void Page_Load(object sender, EventArgs e)

    {
        
        Txtsd.Text = DateTime.Today.ToShortDateString();


        if (!IsPostBack)
        {
            generateAutoId();
        }

        con.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";
        cmd.Connection = con; 
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        DateTime prev;
        DateTime next;
        TimeSpan diff;
        next = Convert.ToDateTime(TxtNextdate.Text.ToString());
        prev = Convert.ToDateTime(Txtsd.Text.ToString());
        diff = next.Subtract(prev);
        raj.Text = Convert.ToString(diff.Days);

        int d = Convert.ToInt32(raj.Text);
        if (d <= 0)
        {
            Label12.Text = "Please select valid next date";
            raj.Text = "...";
            return;
        }
        else
        {
            Label12.Text = "";
            raj.Text = "...";

        }

        con.ConnectionString = @"Provider=MicroSoft.Jet.OLEDB.4.0;Data Source=E:\lawyersapplication\Appdata\mydb.mdb";

        cmd.Connection = con;
        String SQL = "insert into Registbl values(" + TxtRegid.Text + "," + Txtcaseid.Text + ",'" + Txtctitle.Text + "','" + Txtprevdate.Text + "','" + TxtCourtname.Text + "'," + TxtClientID.Text + ",'" + TxtCName.Text + "','" + TxtVsparty.Text + "','" + TxtCaseposition.Text +"','" + TxtNextdate.Text+ "')";
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
        cmd.CommandText = "Select max (Regid) from Registbl";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        i++;
        TxtRegid.Text= i.ToString();

    }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string SQL = null;
            SQL = "Select * from Casetbl where caseid  =" + Txtcaseid.Text;

            System.Data.OleDb.OleDbDataAdapter DA = new
            System.Data.OleDb.OleDbDataAdapter(SQL, con);

            System.Data.DataSet DS = new System.Data.DataSet();

            DA.Fill(DS, "Tbl1");

            System.Data.DataRow RW;

            RW = DS.Tables["Tbl1"].Rows[0];
            Txtctitle.Text = RW["ctitle"].ToString();
            Txtprevdate.Text = RW["cdate"].ToString();
            TxtClientID.Text= RW["Clientid"].ToString();
            TxtCName.Text = RW["CName"].ToString();
            TxtCourtname.Text= RW["Courtname"].ToString();
            TxtVsparty.Text = RW["Vsparty"].ToString();
            TxtCaseposition.Text = RW["remark"].ToString();

            RW = null;
            DA = null;
            DS = null;

        }

        
}
