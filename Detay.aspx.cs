using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Detay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["urunsayi"]) < 1)
        {
            Session["urunsayi"] = 0;
        }

        Label7.Text = Convert.ToString(Session["urunsayi"]);

        int gelensayi = Convert.ToInt32(Request.QueryString["id"]);
        if (gelensayi == 0)
        {
            gelensayi = 1;
        }

        OleDbConnection baglanti = new OleDbConnection();
        OleDbCommand sorgu = new OleDbCommand();
        OleDbDataReader getir;
        baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti.Open();
        sorgu.Connection = baglanti;
        sorgu.CommandText = "select * from urunler where id=" + gelensayi;
        getir = sorgu.ExecuteReader();
        if (getir.HasRows)
        {
            getir.Read();
            Label2.Text = Convert.ToString(getir["fiyat"]);
            Label5.Text = Convert.ToString(getir["urunad"]);

        }
        baglanti.Close();

        int k = 1;
        OleDbConnection baglanti1 = new OleDbConnection();
        OleDbCommand sorgu1 = new OleDbCommand();
        OleDbDataReader getir1;
        baglanti1.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti1.Open();
        sorgu1.Connection = baglanti1;
        sorgu1.CommandText = "select foto1,foto2,foto3,kategori from urunler where id=" + gelensayi;
        getir1 = sorgu1.ExecuteReader();
        while (getir1.Read())
        {
            if (k == 1)
            {
                resimust.Attributes.CssStyle.Value = "background:url(urunresim/" + Convert.ToString(getir1["foto1"]) + ")";
            }
            ListBox1.Items.Add(Convert.ToString(getir1["foto1"]));
            ListBox1.Items.Add(Convert.ToString(getir1["foto2"]));
            ListBox1.Items.Add(Convert.ToString(getir1["foto3"]));
            k++;
        }

        string gecici = "";
        int ebid;
        OleDbConnection baglanti2 = new OleDbConnection();
        OleDbCommand sorgu2 = new OleDbCommand();
        OleDbDataReader getir2;
        baglanti2.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti2.Open();
        sorgu2.Connection = baglanti1;
        sorgu2.CommandText = "select max(id) from urunler";
        getir2 = sorgu2.ExecuteReader();
        getir2.Read();
        ebid = Convert.ToInt32(getir2[0]);
        baglanti2.Close();

        Random a = new Random();
        int[] sayilar = new int[10];
        int uretilensayi, j = 0;
        while (j < 10)
        {
            uretilensayi = a.Next(1, ebid + 1);
            if (sayilar.Contains(uretilensayi) == false)
            {
                sayilar[j] = uretilensayi;
                j++;
            }
        }

        gecici = "";
        for (int i = 0; i < 4; i++)
        {
            OleDbConnection baglanti3 = new OleDbConnection();
            OleDbCommand sorgu3 = new OleDbCommand();
            OleDbDataReader getir3;
            baglanti3.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti3.Open();
            sorgu3.Connection = baglanti3;
            sorgu3.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + sayilar[i];
            getir3 = sorgu3.ExecuteReader();
            getir3.Read();
            gecici = gecici + "<div class='urunfoto'><a href='Detay.aspx?id=" + getir3["id"] + "'><img src='urunresim/" + getir3["foto1"] + "' width='209' height='186'></a></div>";
            baglanti3.Close();
        }

        benzerurunler.InnerHtml = gecici;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Panel.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int urunsayisi = 1;
        Session["urunsayi"] = Convert.ToInt32(Session["urunsayi"]) + urunsayisi;
        Label7.Text = Convert.ToString(Session["urunsayi"]);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Label7.Text = Convert.ToString(0);
    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label6.Text = "Satın Alma İşlemi Kullanılamamaktadır";
        Label7.Visible = false;
        Label8.Visible = false;
    }
}