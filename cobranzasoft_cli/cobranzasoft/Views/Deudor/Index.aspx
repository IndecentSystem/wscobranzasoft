<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<cobranzasoft.Models.Cliente>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th>
                codCliente
            </th>
            <th>
                nomCliente
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>

            <td>
                <%: Html.ActionLink(item.codCliente, "Cliente", new { cliente = item.codCliente}) %>
            </td>
            <td>
                <%: item.nomCliente %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

