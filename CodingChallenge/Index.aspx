<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CodingChallenge.Index" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>


<!DOCTYPE html>
<html>

<head runat="server">
    <title>CodingChallenge - InvertirOnline.com</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Saturn is free PSD &amp; HTML template by @flamekaizar">
    <meta name="author" content="Afnizar Nur Ghifari">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/kube.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/custom.min.css" />
    <link rel="shortcut icon" href="img/favicon.ico" />
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
</head>
<body>
	<form id="form1" runat="server">
	<!-- Navigation -->
	<div class="main-nav">
		<div class="container">
			<header class="group top-nav">
					<a class="logo" href="Index.aspx">CodingChallenge - InvertirOnline</a>
			</header>
		</div>
	</div>
	<!-- Introduction -->
	<div class="intro">
		<div class="container">
			<div class="units-row">
			    <div class="unit-90">
                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true"></asp:ScriptManager>                                        
                    <ajaxToolkit:ComboBox ID="ComboBox1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ObjectDataSource1" DataTextField="Descripcion" DataValueField="Id" MaxLength="0" style="display: inline;" OnSelectedIndexChanged="ComboBox1_SelectedIndexChanged" Width="1000px" DropDownStyle="DropDownList" AutoPostBack="True"></ajaxToolkit:ComboBox>
                
                </div>
		        <br />
		        <br />
		        <br />
		        <br />
		        <br />
		        <br />
		        <br />
		</div>
	</div>
	
	<!-- Content -->
	<div class="content">
		<div class="container">
			<!-- Post -->
			<div class="post">
				<!-- Heading -->
				<div><a class="logo">
                    <asp:Label ID="Label1" runat="server" Text="Títulos en la bolsa:" Visible="False"></asp:Label>
                    </a></div>
				<hr>
                <asp:Table ID="Table1" runat="server" Width="865px" Visible="False">
                    <asp:TableRow ID="fila" runat="server">
                        <asp:TableCell ID="id" runat="server">Id</asp:TableCell>
                        <asp:TableCell ID="simbolo" runat="server">Símbolo</asp:TableCell>
                        <asp:TableCell ID="descripcion" runat="server">Descripción</asp:TableCell>
                        <asp:TableCell ID="detalle" runat="server">Detalle</asp:TableCell>
                        <asp:TableCell ID="tipo" runat="server">Tipo</asp:TableCell>
                        <asp:TableCell ID="moneda" runat="server">Moneda</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
			</div>
			<!-- /post -->

			<!-- Post -->
			<!-- /post -->

			<!-- Post -->
			<!-- /post -->
		</div>
	</div>
</div>
	<footer>
		<div class="container">
			<p class="text-centered foot-cp">
	    		&nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetTitulosMock" TypeName="CodingChallenge.Data.DataAccess.ListaTitulosMock"></asp:ObjectDataSource>
                    
	    	</p>
		</div>
	</footer>

	    <br />
        <br />

	<!-- Javascript -->
	<script src="js/jquery.min.js"></script>
    <script src="js/kube.min.js"></script>
        <br />
    </form>
</body>
</html>
