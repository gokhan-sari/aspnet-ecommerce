<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head id="Head1" runat="server">
        <title>UcuzAl.Com</title>
        <link rel="icon" type="image/png" href="images/fovicon.png" />
        <link rel="stylesheet" href="css/iview.css" />
        <link rel="stylesheet" href="css/skin 2/style.css" />
        <script src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/raphael-min.js"></script>
        <script type="text/javascript" src="js/jquery.easing.js"></script>
        <script src="js/iview.js"></script>
        <script>
            $(document).ready(function () {
                $('#iview').iView({
                    pauseTime: "5000",
                    pauseOnHover: true,
                    directionNav: true,
                    directionNavHide: false,
                    directionNavHoverOpacity: 0,
                    controlNav: false,
                    nextLabel: "Sonraki",
                    previousLabel: "Önceki",
                    playLabel: "Oynat",
                    pauseLabel: "Durdur",
                    timer: "360Bar",
                    timerPadding: 3,
                    timerColor: "#0F0"
                });
                $('#iview2').iView({
                    pauseTime: "3000",
                    pauseOnHover: true,
                    directionNav: true,
                    directionNavHide: false,
                    controlNav: true,
                    controlNavNextPrev: false,
                    controlNavTooltip: false,
                    nextLabel: "Sonraki",
                    previousLabel: "Önceki",
                    playLabel: "Oynat",
                    pauseLabel: "Durdur",
                    timer: "360Bar",
                    timerBg: "#EEE",
                    timerColor: "#000",
                    timerDiameter: 40,
                    timerPadding: 4,
                    timerStroke: 8,
                    timerPosition: "bottom-right"
                });
            });
        </script>

        <style type="text/css">
            /***** RESET *****/
            html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code,del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, sub, sup, tt, var, b, u, i, center,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                /*font-size: 100%;
                vertical-align: baseline;*/
            }

            html,
            body {
                height: 100%;
                width: 100%
            }

            body {
                line-height: 1;
            }

            ol,
            ul {
                list-style: none;
            }

            blockquote,
            q {
                quotes: none;
            }

            blockquote:before,
            blockquote:after,
            q:before,
            q:after {
                content: '';
                content: none;
            }

            table {
                border-collapse: collapse;
                border-spacing: 0;
            }

            textarea {
                overflow: auto;
            }
            /***** RESET *****/

            .hepsi {
                width: auto;
                height: auto;
                margin: 0 auto 0 auto;
            }

            .ust {
                width: auto;
                height: 140px;
                padding: 0 0 0 0;
            }

            .orta {
                width: auto;
                height: 1050px;
            }

            .alt {
                width: auto;
                height: 100px;
            }

            .ortasol {
                width: 22%;
                height: 1050px;
                float: left
            }

            .govde {
                width: 56%;
                height: 1050px;
                float: left;
                z-index: -1
            }

            .ortasag {
                width: 22%;
                height: 1050px;
                float: left;
                z-index: -1
            }

            .kategoriler {
                width: 100%;
                height: 500px
            }

            .kategoriler ul li {
                width: 83%;
                height: 31px;
                padding: 13px 0 0 17%;
                text-align: left;
                font: bold 14px tahoma;
                border-top: 1px solid #ccc;
                border-right: 1px solid #ccc;
                margin: 0 0 0 -1px
            }

            .border {
                border-bottom: 1px solid #ccc
            }

            .kategoriler ul li a {
                text-decoration: none;
                color: #000
            }

            .tumkategoriler {
                width: 100%;
                height: 35px;
                padding: 14px 0 0 0;
                text-align: center;
                font: bold 17px tahoma;
                background: #007799;
                color: #fff
            }

            .BOLUM1 {
                width: 100%;
                height: 550px
            }

            .logo {
                width: 30%;
                height: 120px;
                float: left;
                padding: 20px 0 0 0
            }

            .ch {
                width: 40%;
                height: 140px;
                float: left
            }

            .sepettumu {
                width: 15%;
                height: 140px;
                float: left
            }

            .sepet {
                width: 100%;
                height: 140px;
                float: left;
                background: #99BADD
            }

            .sepetic {
                width: 100%;
                height: 60px;
                background: #4682B4;
                margin: 40px 0 0 0
            }

            #sepeticyazi {
                width: 135px;
                height: 45px;
                float: left;
                padding: 15px 0 0 5px
            }

            .panel {
                width: 15%;
                height: 138px;
                float: left;
            }

            #slider {
                width: 590px;
                height: 250px;
                margin: 0 auto 0 auto;
                border: 2px solid #eee
            }

            #urunler {
                width: 700px;
                height: 800px;
                margin: 0 auto 0 auto
            }

            .gununurunu {
                width: 300px;
                height: 320px;
                margin: 0 auto 0 0
            }

            #coksatilanurun {
                width: 100%;
                height: 320px;
            }

            #soneklenenurun {
                width: 100%;
                height: 320px;
            }

            .urun {
                width: 200px;
                height: 250px;
                float: left;
                border: 1px solid #404048;
                margin: 14px 0 0 25px;
                background: #99BADD;
                font: 14px tahoma
            }

            .urunfoto {
                width: 200px;
                height: 200px;
            }

            .urunadi {
                width: 200px;
                height: 20px;
                margin: 5px 0 0 0
            }

            .urunadi a {
                text-decoration: none;
                color: #000
            }

            .urunadi a:hover {
                color: #1E90FF
            }

            .urunfiyat {
                width: 200px;
                height: 25px;
                margin: 5px 0 0 0
            }

            .urunfiyat a {
                text-decoration: none;
                color: #000
            }

            .urunfiyat a:hover {
                color: #1E90FF
            }

            #Panel1 {
                display: none
            }

            .sayi1 {
                width: 59px;
                height: 25px;
                float: left;
                cursor: pointer;
                opacity: 0.5;
                margin: 0 0px 0 0
            }

            .satilan {
                width: 300px;
                height: 350px;
            }

            .enson {
                width: 300px;
                height: 350px;
            }

            .satilanyazi {
                width: 173px;
                height: 23px;
            }

            .satis {
                width: 100%;
                height: 350px;
                border-top: 1px solid #ccc;
                border-left: 1px solid #ccc;
                border-bottom: 1px solid #ccc
            }

            .gunun {
                width: 100%;
                height: 350px;
                border-top: 1px solid #ccc;
                border-left: 1px solid #ccc;
            }

            .gununyazi {
                width: 148px;
                height: 23px;
            }

            .eklenen {
                width: 100%;
                height: 350px;
                border-left: 1px solid #ccc;
                border-bottom: 1px solid #ccc
            }

            .eklenenyazi {
                width: 173px;
                height: 23px;
            }

            .el {
                cursor: pointer;
            }

            .buton1 {
                width: 49%;
                height: 30px;
                cursor: pointer;
                background: #DFDFDF;
                font: 14px tahoma;
                margin: 0 0 0 1px;
                color: #111111
            }

            .buton2 {
                width: 48%;
                height: 30px;
                cursor: pointer;
                background: #DFDFDF;
                font: 14px tahoma;
                color: #111111
            }

            .kategoributon {
                font: bold 14px tahoma;
                border: none;
                background: #fff;
                cursor: pointer;
                margin: 0 0 0 -5px
            }
        </style>

        <script type="text/javascript">
            function basla1(z) {
                var j = 1;
                var s = z;
                var resimler = new Array();

                var sliderlist = document.getElementById('<%=ListBox2.ClientID%>')
                var sliderlistuzunluk = sliderlist.options.length;

                for (var i = 0; i < sliderlistuzunluk; i++) {
                    resimler[j] = sliderlist.options[i].value;
                    j++;
                }

                var idler = new Array();
                j = 1;

                var idlist = document.getElementById('<%=ListBox1.ClientID%>')
                var idlistuzunluk = idlist.options.length;

                for (var i = 0; i < idlistuzunluk; i++) {
                    idler[j] = idlist.options[i].value;
                    j++;
                }

                degistir1 = window.setInterval(function () {
                    document.getElementById("sliderust").style.background = "url(slider/" + resimler[s] + ")";
                    document.getElementById("sliderlink").href = "detay.aspx?id=" + idler[s];
                    for (var i = 1; i <= 10; i++) {
                        if (s == i) {
                            document.getElementById("s" + i).style.opacity = "1";
                        }
                        else { document.getElementById("s" + i).style.opacity = "0.5"; }
                    }

                    s++;
                    if (s == 11) {
                        s = 1;
                    }
                }, 2000);
            }
        </script>
    </head>

    <body onload="basla1(1)">
        <form id="form1" runat="server">
            <div class="hepsi">
                <div class="ust">
                    <div class="logo"><a href="index.aspx"><img src="images/logo.png"
                                style=" margin:0 auto 0 20px" /></a></div>
                    <div class="ch"></div>
                    <div class="sepettumu">
                        <div class="sepet">
                            <div class="sepetic">
                                <img src="images/sepet60.png" style="float:left" />
                                <div id="sepeticyazi">
                                    <asp:Label ID="Label1" Font-Bold="false" ForeColor="#121212" Font-Size="Medium"
                                        Font-Names="tahoma" runat="server" Text="Sepetinizde "></asp:Label>
                                    <asp:Label ID="Label2" Font-Bold="false" ForeColor="#121212" Font-Size="Medium"
                                        Font-Names="tahoma" runat="server" Text=""></asp:Label></br>
                                    <asp:Label ID="Label3" Font-Bold="false" ForeColor="#121212" Font-Size="Medium"
                                        Font-Names="tahoma" runat="server" Text="Ürün Bulunmakta"></asp:Label>
                                </div>
                                <asp:Button ID="Button2" CssClass="buton1" runat="server" Text="Sepeti Boşalt"
                                    onclick="Button2_Click" />
                                <asp:Button ID="Button3" CssClass="buton2" runat="server" Text="Satın Al"
                                    onclick="Button3_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <asp:Button ID="Button1" runat="server" Height="140px" onclick="Button1_Click"
                            Text="Panel Sayfası" Width="100%" CssClass="el" BorderStyle="None" Font-Bold="true"
                            Font-Size="Larger" Font-Names="tahoma" ForeColor="#3F3F3F" BackColor="#DFDFDF" />
                    </div>
                </div>
                <div class="orta">
                    <div class="ortasol">
                        <div class="kategoriler">
                            <div class="tumkategoriler">Tüm Kategoriler</div>
                            <ul>
                                <li>
                                    <asp:Button ID="Button4" CssClass="kategoributon" runat="server"
                                        Text="Bilgisayar/Tablet" onclick="Button4_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button5" CssClass="kategoributon" runat="server" Text="Telefon"
                                        onclick="Button5_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button6" CssClass="kategoributon" runat="server"
                                        Text="Ev Elektroniği" onclick="Button6_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button7" CssClass="kategoributon" runat="server"
                                        Text="Beyaz Eşya/Mutfak" onclick="Button7_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button8" CssClass="kategoributon" runat="server" Text="Foto/Kamera"
                                        onclick="Button8_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button9" CssClass="kategoributon" runat="server" Text="Spor"
                                        onclick="Button9_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button10" CssClass="kategoributon" runat="server" Text="Giyim"
                                        onclick="Button10_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button11" CssClass="kategoributon" runat="server" Text="Kitap/Film"
                                        onclick="Button11_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="Button12" CssClass="kategoributon" runat="server" Text="Kırtasiye"
                                        onclick="Button12_Click" />
                                </li>
                                <li class="border">
                                    <asp:Button ID="Button13" CssClass="kategoributon" runat="server"
                                        Text="Oto Aksesuar" onclick="Button13_Click" />
                                </li>
                            </ul>
                        </div>
                        <div class="BOLUM1"></div>
                    </div>
                    <div class="govde">
                        <div id="slider" runat="server">
                            <div id="cont">
                                <div class="container">
                                    <div id="iview2">
                                        <div data-iview:image="slider/2105_Croc_Champion_kuru_mamalari_vitrin_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=83'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/2105_tv_vitrin_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=84'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/Fox_Fitness_Kosu_Bandi_0430_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=85'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/General_Mobile_1505_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=86'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/Hotpoint-Ariston_1505_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=87'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/ipana_1805_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=88'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/LG_42LB580N_42_Smart_TV_1805_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=89'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/canon_ixuss_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=90'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/PS4_siyah_beyaz_oyunlari_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=91'" style="cursor:pointer">
                                        </div>

                                        <div data-iview:image="slider/Scholl_Velvet_Smooth_Express_Pedi_1805_590x250.png"
                                            onclick="document.location.href ='Detay.aspx?id=82'" style="cursor:pointer">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="urunler" runat="server"></div>
                    </div>
                    <div class="ortasag">
                        <div class="gunun">
                            <div class="gununyazi"
                                style=" font:bold 15px tahoma; padding:7px 0 0 50px; color:#555; margin:0 auto 0 auto; border-bottom:1px solid #ccc; border-left:1px solid #ccc; border-right:1px solid #ccc">
                                Günün Ürünü</div>
                            <div class="gununurunu">
                                <div class="container1">
                                    <div id="iview">
                                        <div onclick="document.location.href ='Detay.aspx?id=3'" style="cursor:pointer"
                                            data-iview:image="gununurunu/urun3.jpg"></div>
                                        <div onclick="document.location.href ='Detay.aspx?id=29'" style="cursor:pointer"
                                            data-iview:image="gununurunu/urun29.jpg"></div>
                                        <div onclick="document.location.href ='Detay.aspx?id=50'" style="cursor:pointer"
                                            data-iview:image="gununurunu/urun50.jpg"></div>
                                        <div onclick="document.location.href ='Detay.aspx?id=62'" style="cursor:pointer"
                                            data-iview:image="gununurunu/urun62.jpg"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="satis">
                            <div class="satilanyazi"
                                style=" font:bold 15px tahoma; padding:7px 0 0 25px; color:#555; margin:0 auto 0 auto; border-bottom:1px solid #ccc; border-left:1px solid #ccc; border-right:1px solid #ccc">
                                En Çok Satılan Ürün</div>
                            <div id="coksatilanurun" runat="server"></div>
                        </div>
                        <div class="eklenen">
                            <div class="eklenenyazi"
                                style=" font:bold 15px tahoma; padding:7px 0 0 25px; color:#555; margin:0 auto 0 auto; border-bottom:1px solid #ccc; border-left:1px solid #ccc; border-right:1px solid #ccc">
                                En Son Eklenen Ürün</div>
                            <div id="soneklenenurun" runat="server"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="alt"></div>
            <asp:panel ID="Panel1" runat="server">
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
            </asp:panel>
        </form>
    </body>

    </html>