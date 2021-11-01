<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Panel.aspx.cs" Inherits="Panel" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head id="Head1" runat="server">
        <title>UcuzAl.Com</title>
        <link rel="icon" type="image/png" href="images/fovicon.png" />
        <style type="text/css">
            /***** RESET *****/
            html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code,del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, sub, sup, tt, var, b, u, i, center,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr  {
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
                border-bottom: 1px solid #ccc
            }

            .logo {
                width: 30%;
                height: 120px;
                float: left;
                padding: 20px 0 0 0
            }

            .ch {
                width: 55%;
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
                width: 100%;
                height: auto;
                margin: 0 0 50px 0
            }

            .buton1 {
                width: 105px;
                height: 30px
            }

            .buton2 {
                width: 104px;
                height: 30px
            }

            .panel2 {
                width: 980px;
                height: 500px;
                margin: 0 auto 0 auto;
                border-bottom: 1px solid #ccc;
                border-right: 1px solid #ccc;
                border-left: 1px solid #ccc
            }

            .yazi {
                width: 411px;
                height: -100px;
                padding: 150px 0 0 0;
                margin: 0 auto 0 auto
            }

            .yazi1 {
                width: 411px;
                height: 30px;
                margin: 0 auto 0 auto
            }

            .yazi2 {
                width: 100px;
                height: 20px;
                margin: 0 0 0 auto
            }

            .butonlar {
                width: auto;
                height: 100px;
                padding: 40px 0 0 25px;
                margin: 0 auto 0 auto
            }

            .buton {
                width: 25%;
                height: 70px
            }

            .yazitablo {
                font: bold 19px tahoma
            }

            td {
                font: 20px tahoma;
                height: 40px
            }

            #border1 {
                border-top: 1px solid #ccc;
                border-left: 1px solid #ccc;
                border-right: 1px solid #ccc
            }

            .border2 {
                border-top: 1px solid #ccc;
                border-left: 1px solid #ccc;
                border-right: 1px solid #ccc
            }

            .border3 {
                border: 1px solid #ccc
            }

            .border4 {
                border-top: 1px solid #ccc;
                border-left: 1px solid #ccc;
                border-right: 1px solid #ccc
            }

            .kaydetbuton {
                width: 100px;
                height: 30px;
                font: 15px tahoma;
                margin: 0 0 0 195px
            }

            .style1 {
                font: bold 19px tahoma;
                width: 15%;
                height: 30px;
            }

            .style2 {
                width: 25%;
                height: 30px;
            }

            .style3 {
                width: 10%;
                height: 30px;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="hepsi">
                <div class="ust">
                    <div class="logo"><a href="index.aspx"><img src="images/logo.png"
                                style=" margin:0 auto 0 20px" /></a></div>
                    <div class="ch">
                        <div class="butonlar">
                            <asp:Button ID="Button2" Font-Size="Medium" Font-Names="tahoma" Font-Bold="true"
                                ForeColor="#1F1F1F" CssClass="buton" runat="server" Text="Ürün Ekle"
                                onclick="Button2_Click" />
                            <asp:Button ID="Button3" Font-Size="Medium" Font-Names="tahoma" Font-Bold="true"
                                ForeColor="#1F1F1F" CssClass="buton" runat="server" Text="Ürün Düzenle"
                                onclick="Button3_Click" />
                            <asp:Button ID="Button4" Font-Size="Medium" Font-Names="tahoma" Font-Bold="true"
                                ForeColor="#1F1F1F" CssClass="buton" runat="server" Text="Ürün Sil"
                                onclick="Button4_Click" />
                        </div>
                    </div>
                    <div class="panel">
                        <asp:Button ID="Button1" runat="server" Height="140px" Text="Ana Sayfa" Width="100%"
                            CssClass="el" BorderStyle="None" Font-Bold="true" Font-Size="Larger" Font-Names="tahoma"
                            ForeColor="#3F3F3F" BackColor="#DFDFDF" onclick="Button1_Click" />
                    </div>
                </div>
                <div class="orta">
                    <asp:Panel ID="Panel1" CssClass="panel2" runat="server">
                        <div class="yazi">
                            <div class="yazi1">
                                <asp:Label ID="Label1" Font-Names="tahoma" ForeColor="#1F1F1F" Font-Size="Larger"
                                    Font-Bold="true" runat="server" Text="UcuzAl.Com Yönetici Paneline Hoş Geldiniz">
                                </asp:Label>
                            </div>
                            <div class="yazi2">
                                <asp:Label ID="Label2" Font-Names="tahoma" ForeColor="#3F3F3F" Font-Size="Medium"
                                    Font-Bold="true" runat="server" Text="versiyon 1.0"></asp:Label>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="Panel2" CssClass="panel2" runat="server">
                        <table style="width: 100%; ">
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                </td>
                                <td class="style1" id="border1">
                                    &nbsp;&nbsp;Ürün Ekle</td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Ürün Adı</td>
                                <td class="border4">
                                    &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp; </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Ürün Fiyatı</td>
                                <td class="border4">
                                    &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp; </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Foto 1</td>
                                <td class="border4">
                                    &nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Foto 2</td>
                                <td class="border4">
                                    &nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border3">
                                    &nbsp;&nbsp;Foto 3</td>
                                <td class="border3">
                                    &nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload3" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="2" class="border3">&nbsp;&nbsp;
                                    <asp:Button ID="Button5" runat="server" CssClass="kaydetbuton" Text="Kaydet"
                                        onclick="Button5_Click" />
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" CssClass="panel2" runat="server">
                        <table style="width: 100%; ">
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                </td>
                                <td class="style1" id="border1">
                                    &nbsp;&nbsp;Ürün Düzenle</td>
                                <td class="style2" id="border1">
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="210px">
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Ürün Adı</td>
                                <td class="border4">
                                    &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="210px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp; </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Ürün Fiyatı</td>
                                <td class="border4">
                                    &nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp; </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Foto 1</td>
                                <td class="border4">
                                    &nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload4" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Foto 2</td>
                                <td class="border4">
                                    &nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload5" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border3">
                                    &nbsp;&nbsp;Foto 3</td>
                                <td class="border3">
                                    &nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload6" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="2" class="border3">&nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" CssClass="kaydetbuton" Text="Kaydet"
                                        onclick="Button6_Click" />
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel4" CssClass="panel2" runat="server">
                        <table style="width: 100%; ">
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                </td>
                                <td class="style1" id="border1">
                                    &nbsp;&nbsp;Ürün Sil</td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style2">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td class="border2">
                                    &nbsp;&nbsp;Ürün Adı</td>
                                <td class="border4">
                                    &nbsp;&nbsp;<asp:ListBox ID="ListBox1" runat="server" Height="100px" Width="325px">
                                    </asp:ListBox>
                                </td>
                                <td>
                                    &nbsp; </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="2" class="border3">&nbsp;&nbsp;
                                    <asp:Button ID="Button7" runat="server" CssClass="kaydetbuton" Text="Sil"
                                        onclick="Button7_Click" />
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </div>
        </form>
    </body>

    </html>