using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            OleDbConnection baglanti1 = new OleDbConnection();
            OleDbCommand sorgu1 = new OleDbCommand();
            OleDbDataReader getir1;
            baglanti1.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti1.Open();
            sorgu1.Connection = baglanti1;
            sorgu1.CommandText = "select urunad from urunler";
            getir1 = sorgu1.ExecuteReader();
            DropDownList1.Items.Add("Bir Ürün Seçiniz");
            while (getir1.Read())
            {
                DropDownList1.Items.Add(Convert.ToString(getir1[0]));
                ListBox1.Items.Add(Convert.ToString(getir1[0]));
            }
        }

        Panel2.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string urunfoto1, urunfoto2, urunfoto3;
        int ebid;
        OleDbConnection baglanti1 = new OleDbConnection();
        OleDbCommand sorgu1 = new OleDbCommand();
        OleDbDataReader getir1;
        baglanti1.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti1.Open();
        sorgu1.Connection = baglanti1;
        sorgu1.CommandText = "select max(id) from urunler";
        getir1 = sorgu1.ExecuteReader();
        getir1.Read();
        ebid = Convert.ToInt32(getir1[0]);
        baglanti1.Close();
        ebid++;
        urunfoto1 = "urun" + ebid + "foto1.jpg";
        FileUpload1.SaveAs(Server.MapPath("urunresim/" + urunfoto1));
        urunfoto2 = "urun" + ebid + "foto2.jpg";
        FileUpload2.SaveAs(Server.MapPath("urunresim/" + urunfoto2));
        urunfoto3 = "urun" + ebid + "foto3.jpg";
        FileUpload3.SaveAs(Server.MapPath("urunresim/" + urunfoto3));

        OleDbConnection baglanti2 = new OleDbConnection();
        OleDbCommand sorgu2 = new OleDbCommand();
        baglanti2.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti2.Open();
        sorgu2.Connection = baglanti2;
        sorgu2.CommandText = "insert into urunler (urunad,fiyat,foto1,foto2,foto3) values ('" + TextBox1.Text + "'," + Convert.ToInt32(TextBox2.Text) + ",'" + urunfoto1 + "','" + urunfoto2 + "','" + urunfoto3 + "')";
        sorgu2.ExecuteNonQuery();
        baglanti2.Close();
        Label3.Text = "Kayıt Tamamlanmıştır.";

        Panel2.Visible = true;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti2 = new OleDbConnection();
        OleDbCommand sorgu2 = new OleDbCommand();
        baglanti2.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti2.Open();
        sorgu2.Connection = baglanti2;
        sorgu2.CommandText = "delete from urunler where urunad='" + ListBox1.SelectedItem.Value + "'";
        sorgu2.ExecuteNonQuery();
        baglanti2.Close();
        Label4.Text = "Silme Tamamlanmıştır.";

        Panel4.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        string foto1, foto2, foto3;
        OleDbConnection baglanti2 = new OleDbConnection();
        OleDbCommand sorgu2 = new OleDbCommand();
        OleDbDataReader getir2;
        baglanti2.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti2.Open();
        sorgu2.Connection = baglanti2;
        sorgu2.CommandText = "select foto1,foto2,foto3 from urunler where urunad='" + DropDownList1.SelectedItem.Value + "'";
        getir2 = sorgu2.ExecuteReader();
        getir2.Read();

        foto1 = Convert.ToString(getir2["foto1"]);
        FileUpload1.SaveAs(Server.MapPath("urunresim/" + foto1));
        foto2 = Convert.ToString(getir2["foto2"]);
        FileUpload2.SaveAs(Server.MapPath("urunresim/" + foto2));
        foto3 = Convert.ToString(getir2["foto3"]);
        FileUpload3.SaveAs(Server.MapPath("urunresim/" + foto3));

        OleDbConnection baglanti1 = new OleDbConnection();
        OleDbCommand sorgu1 = new OleDbCommand();
        baglanti1.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti1.Open();
        sorgu1.Connection = baglanti1;
        sorgu1.CommandText = "update urunler set urunad='" + TextBox3.Text + "',fiyat='" + TextBox4.Text + "' where urunad='" + DropDownList1.SelectedItem.Value + "'";
        sorgu1.ExecuteNonQuery();
        baglanti1.Close();

        Panel3.Visible = true;
        Label5.Text = "Güncelleme Tamamlanmıştır.";
    }
}