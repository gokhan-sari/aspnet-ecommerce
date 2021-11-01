<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detay.aspx.cs" Inherits="Detay" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head id="Head1" runat="server">
        <title>UcuzAl.Com</title>
        <link rel="icon" type="image/png" href="images/fovicon.png" />
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

            .panel {
                width: 15%;
                height: 138px;
                float: left;
            }

            .el {
                cursor: pointer;
            }

            .orta {
                width: auto;
                height: 674px;
                margin: 0 0 50px 0
            }

            .icerik {
                width: 940px;
                height: 674px;
                margin: 0 auto 0 auto
            }

            .resimler {
                width: 500px;
                height: 674px;
                float: left
            }

            .aciklama {
                width: 440px;
                height: 674px;
                float: left
            }

            #resimust {
                width: 500px;
                height: 500px;
                margin: 50px 0 0 0;
                border: 1px solid #ccc
            }

            #resimalt {
                width: 500px;
                height: 100px;
                margin: 20px 0 0 0;
                border-top: 1px solid #ccc;
                border-bottom: 1px solid #ccc
            }

            .resim {
                width: 100px;
                height: 100px;
                float: left;
                cursor: pointer;
                opacity: 0.5;
                margin: 0 0 0 50px
            }

            #Panel1 {
                display: none
            }

            #urunad {
                width: 408px;
                height: 85px;
                margin: 50px 0 0 10px;
                padding: 15px 0 0 10px;
                border: 1px solid #ccc
            }

            #urunfiyat {
                width: 194px;
                height: 50px;
                margin: 10px 6px 0 10px;
                float: left;
                padding: 25px 5px 0 10px;
                border: 1px solid #ccc
            }

            #urunsatinal {
                width: 180px;
                height: 75px;
                margin: 10px 0 0 23px;
                float: left
            }

            .sepetbuton {
                width: 180px;
                height: 75px;
                font: bold 18px tahoma;
                background: #eee;
                color: #303030;
                border-color: #ddd;
                cursor: pointer
            }

            #benzerurunler {
                width: 420px;
                height: 374px;
                float: left;
                border-right: 1px solid #ccc;
                border-bottom: 1px solid #ccc
            }

            #urunfoto {
                width: 200px;
                height: 175px;
            }

            #sepeticyazi {
                width: 135px;
                height: 45px;
                float: left;
                padding: 15px 0 0 5px
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

            .urunfoto {
                width: 209px;
                height: 186px;
                float: left;
                border-top: 1px solid #ccc;
                border-left: 1px solid #ccc;
            }

            .uruntumu {
                width: 420px;
                height: 429px;
                margin: 10px 0 0 10px
            }

            .urunyazi {
                width: 299px;
                height: 38px;
                border-top: 1px solid #ccc;
                border-right: 1px solid #ccc;
                border-left: 1px solid #ccc;
                float: left;
                margin: 10px 0 0 0;
                font: bold 19px tahoma;
                letter-spacing: 0.9px;
                padding: 12px 0 0 120px;
                color: #303030
            }
        </style>

        <script type="text/javascript">
            var degistir1;
            function degis1(x) {
                window.clearInterval(degistir1);

                var resimler = new Array();
                var j = 1;

                var fotolist = document.getElementById('<%=ListBox1.ClientID%>')
                var fotolistuzunluk = fotolist.options.length;

                for (var i = 0; i < fotolistuzunluk; i++) {
                    resimler[j] = fotolist.options[i].value;
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

                for (var i = 1; i <= 3; i++) {
                    if (x == i) {
                        document.getElementById("resimust").style.background = "url(urunresim/" + resimler[i] + ")";
                        document.getElementById("resimlink").href = "urunresim/" + idler[i];
                        document.getElementById("s" + x).style.opacity = "1";
                    }
                    else { document.getElementById("s" + i).style.opacity = "0.5"; }
                }
            }
        </script>
    </head>

    <body>
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
                                    <asp:Label ID="Label6" ForeColor="#121212" Font-Bold="false" Font-Size="Medium"
                                        Font-Names="tahoma" runat="server" Text="Sepetinizde "></asp:Label>
                                    <asp:Label ID="Label7" ForeColor="#121212" Font-Bold="false" Font-Size="Medium"
                                        Font-Names="tahoma" runat="server" Text=""></asp:Label></br>
                                    <asp:Label ID="Label8" ForeColor="#121212" Font-Bold="false" Font-Size="Medium"
                                        Font-Names="tahoma" runat="server" Text="Ürün Bulunmakta"></asp:Label>
                                </div>
                                <asp:Button ID="Button3" CssClass="buton1" runat="server" Text="Sepeti Boşalt"
                                    onclick="Button3_Click" />
                                <asp:Button ID="Button4" CssClass="buton2" runat="server" Text="Satın Al"
                                    onclick="Button4_Click" />
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
                    <div class="icerik">
                        <div class="resimler">
                            <div id="resimust" runat="server"></div>
                            <div id="resimalt" runat="server">
                                <ul style=" width:auto; height:100px">
                                    <li class="resim" id="s1" onmouseover="degis1(1)"><img
                                            src="urunresim/<% Response.Write(ListBox1.Items[0].Text);  %>" width="100"
                                            height="100"
                                            style=" border-right:1px solid #ccc; border-left:1px solid #ccc;" />
                                    </li>
                                    <li class="resim" id="s2" onmouseover="degis1(2)"><img
                                            src="urunresim/<% Response.Write(ListBox1.Items[1].Text);  %>" width="100"
                                            height="100"
                                            style=" border-right:1px solid #ccc; border-left:1px solid #ccc;" />
                                    </li>
                                    <li class="resim" id="s3" onmouseover="degis1(3)"><img
                                            src="urunresim/<% Response.Write(ListBox1.Items[2].Text);  %>" width="100"
                                            height="100"
                                            style=" border-right:1px solid #ccc; border-left:1px solid #ccc;" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="aciklama">
                            <div id="urunad">
                                <asp:Label ID="Label4" Font-Size="Larger" Font-Bold="true" Font-Names="tahoma"
                                    runat="server" Text="Ürün İsmi"></asp:Label></br></br>
                                <asp:Label ID="Label5" Font-Size="Large" Font-Bold="false" Font-Names="tahoma"
                                    runat="server"></asp:Label>
                            </div>
                            <div id="urunfiyat">
                                <asp:Label ID="Label1" Font-Size="Larger" Font-Names="tahoma" runat="server"
                                    Text="Ürün Fiyatı : "></asp:Label>
                                <asp:Label ID="Label2" Font-Size="Larger" Font-Names="tahoma" Font-Bold="true"
                                    runat="server"></asp:Label>
                                <asp:Label ID="Label3" Font-Size="Larger" Font-Names="tahoma" runat="server" Text=" TL">
                                </asp:Label>
                            </div>
                            <div id="urunsatinal">
                                <asp:Button CssClass="sepetbuton" ID="Button2" runat="server" Text="Sepete Ekle"
                                    onclick="Button2_Click" />
                            </div>
                            <div class="uruntumu">
                                <div class="urunyazi">Rastgele Ürünler</div>
                                <div id="benzerurunler" runat="server"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                </asp:Panel>
        </form>
    </body>

    </html>