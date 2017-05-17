<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Challenge.Index" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>


<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.Bootstrap.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>


<!DOCTYPE html>
<html>

<head runat="server">
    <title>CodingChallenge - InvertirOnline</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Lobster|Open+Sans:400,400italic,300italic,300|Raleway:300,400,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>

  <body>
      <form id="form2" runat="server">
          <div class="logo text-center">              
            <img src="img/Logo_iol.png" alt="logo" width="500">
            <h2><asp:Label ID="Label3" runat="server" Text="CodingChallenge de Encina, Roque Juan Carlos" ForeColor="#613B93"></asp:Label></h2>
            <div class="social">
              <ul>
                <li>
                  <a href="mailto:juank609@gmail.com" ><i class="fa fa-envelope"></i></a>
                </li>
              </ul>
            </div>
          </div>
    <div class="content">
        <div class="row">
          <div class="logo text-center">
             <div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true"></asp:ScriptManager>                                        
                
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetTitulosMock" TypeName="CodingChallenge.Data.DataAccess.ListaTitulosMock"></asp:ObjectDataSource>
                
                    <dx:BootstrapComboBox ID="BootstrapComboBox1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" IncrementalFilteringMode="StartsWith" TextField="Descripcion" OnSelectedIndexChanged="BootstrapComboBox1_SelectedIndexChanged" IncrementalFilteringDelay="10" style="top: 0px; width: 100%;">
                    </dx:BootstrapComboBox>
                
                </div>
                
          </div>
        

    </div>
            
      <div class="container wow fadeInUp delay-03s">
          <h2 class="subs-title text-center">
              <asp:Label ID="Label1" runat="server" Text="Títulos en la bolsa:" ForeColor="#613B93" Visible="False"></asp:Label></h2>
            <asp:Table ID="Table1" runat="server" Visible="False" ForeColor="Black" BorderStyle="None" Font-Bold="False" Font-Size="Medium" GridLines="None" Height="100%" Width="100%">
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell ID="TableCell1" runat="server" Width="100px">Id</asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server" Width="100px">Símbolo</asp:TableCell>
                        <asp:TableCell ID="TableCell3" runat="server" Width="150px">Descripción</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server" Width="450px">Detalle</asp:TableCell>
                        <asp:TableCell ID="TableCell5" runat="server" Width="100px">Tipo</asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server" Width="100px">Moneda</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
        </div>
      
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>
    
      </form>
    
  </body>

</html>
                
