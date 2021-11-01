using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["urunsayi"]) < 1)
        {
            Session["urunsayi"] = 0;
        }

        Label2.Text = Convert.ToString(Session["urunsayi"]);

        string gecici1 = "";
        int eburun;
        OleDbConnection baglanti2 = new OleDbConnection();
        OleDbCommand sorgu2 = new OleDbCommand();
        OleDbDataReader getir2;
        baglanti2.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti2.Open();
        sorgu2.Connection = baglanti2;
        sorgu2.CommandText = "select max(satilanurun) from urunler";
        getir2 = sorgu2.ExecuteReader();
        getir2.Read();
        eburun = Convert.ToInt32(getir2[0]);
        baglanti2.Close();

        OleDbConnection baglanti3 = new OleDbConnection();
        OleDbCommand sorgu3 = new OleDbCommand();
        OleDbDataReader getir3;
        baglanti3.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti3.Open();
        sorgu3.Connection = baglanti3;
        sorgu3.CommandText = "select id,foto1 from urunler where id=" + eburun;
        getir3 = sorgu3.ExecuteReader();
        getir3.Read();
        gecici1 = gecici1 + "<a href='Detay.aspx?id=" + getir3["id"] + "''><div class='satilan' style='cursor:pointer'><img src='urunresim/" + getir3["foto1"] + "' width='300' height='319'></div></a>";
        baglanti3.Close();

        coksatilanurun.InnerHtml = gecici1;

        string gecici = "";
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

        Random a = new Random();
        int[] sayilar = new int[10];
        int uretilensayi, j = 0, uzunluk;
        string urunadi = "";

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

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + sayilar[i];
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>&nbsp;" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>&nbsp;Fiyat : " + getir["fiyat"] + " TL</a></div></div>";
            baglanti.Close();
        }

        urunler.InnerHtml = gecici;

        string gecici4 = "";
        OleDbConnection baglanti4 = new OleDbConnection();
        OleDbCommand sorgu4 = new OleDbCommand();
        OleDbDataReader getir4;
        baglanti4.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
        baglanti4.Open();
        sorgu4.Connection = baglanti4;
        sorgu4.CommandText = "select id,foto1 from urunler where id=" + ebid;
        getir4 = sorgu4.ExecuteReader();
        getir4.Read();
        gecici4 = gecici4 + "<a href='Detay.aspx?id=" + getir4["id"] + "''><div class='enson' style='cursor:pointer'><img src='urunresim/" + getir4["foto1"] + "' width='300' height='319'></div></a>";
        baglanti4.Close();

        soneklenenurun.InnerHtml = gecici4;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Panel.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Label2.Text = Convert.ToString(0);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Text = "Satın Alma İşlemi Kullanılamamaktadır";
        Label2.Visible = false;
        Label3.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 1; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 10; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 19; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 1;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 28; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 37; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 46; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 55; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 64; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        int uzunluk, k = 73; ;
        string urunadi = "", gecici = "";

        for (int i = 0; i < 9; i++)
        {
            OleDbConnection baglanti = new OleDbConnection();
            OleDbCommand sorgu = new OleDbCommand();
            OleDbDataReader getir;
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + HttpContext.Current.Request.PhysicalApplicationPath + "vt.mdb";
            baglanti.Open();
            sorgu.Connection = baglanti;
            sorgu.CommandText = "select id,urunad,fiyat,foto1 from urunler where id=" + Convert.ToString(k);
            getir = sorgu.ExecuteReader();
            getir.Read();
            urunadi = Convert.ToString(getir["urunad"]);
            uzunluk = urunadi.Length;
            if (uzunluk > 22)
            { urunadi = urunadi.Substring(0, 24) + "..."; }
            gecici = gecici + "<div class='urun'><div class='urunfoto'><a href='Detay.aspx?id=" + getir["id"] + "'><img src='urunresim/" + getir["foto1"] + "' width='200' height='200'></a></div><div class='urunadi'><a href='Detay.aspx?id=" + getir["id"] + "'>" + urunadi + "</a></div><div class='urunfiyat'><a href='Detay.aspx?id=" + getir["id"] + "'>" + getir["fiyat"] + "</a></div></div>";
            baglanti.Close();
            k++;
        }

        urunler.InnerHtml = gecici;
    }
}