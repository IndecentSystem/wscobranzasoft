<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<cobranzasoft.Models.Deudor>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Deudor <%: Model.nomDeudor %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Model.nomDeudor %></h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">codDeudor</div>
        <div class="display-field"><%: Model.codDeudor %></div>
        
        <div class="display-label">nomDeudor</div>
        <div class="display-field"><%: Model.nomDeudor %></div>
        
        <div class="display-label">tipDocumento</div>
        <div class="display-field"><%: Model.tipDocumento %></div>
        
        <div class="display-label">numDocumento</div>
        <div class="display-field"><%: Model.numDocumento %></div>
        
        <div class="display-label">fecRegistro</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.fecRegistro) %></div>
        
        <div class="display-label">fecActualizar</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.fecActualizar) %></div>
        
        <div class="display-label">flgActivo</div>
        <div class="display-field"><%: Model.flgActivo %></div>
        
        <div class="display-label">Cliente</div>
        <div class="display-field"><%: Model.Cliente.nomCliente %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

