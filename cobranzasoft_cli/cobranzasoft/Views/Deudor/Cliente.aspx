<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<cobranzasoft.Models.Deudor>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Deudores x Cliente <%: ViewData["Cliente"] %>>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Deudores x Cliente <%: ViewData["Cliente"] %> </h2>
    <p>(<%: Model.Count() %>) Deudores de este Cliente</p>
    <table>
        <tr>
            <th>
                codDeudor
            </th>
            <th>
                nomDeudor
            </th>
            <th>
                tipDocumento
            </th>
            <th>
                numDocumento
            </th>
            <th>
                fecRegistro
            </th>
            <th>
                fecActualizar
            </th>
            <th>
                flgActivo
            </th>
            <th>
                idCliente
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink(item.codDeudor, "Detalles", new { id=item.idDeudor }) %>
            </td>
            <td>
                <%: item.nomDeudor %>
            </td>
            <td>
                <%: item.tipDocumento %>
            </td>
            <td>
                <%: item.numDocumento %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.fecRegistro) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.fecActualizar) %>
            </td>
            <td>
                <%: item.flgActivo %>
            </td>
            <td>
                <%: item.Cliente.nomCliente %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

