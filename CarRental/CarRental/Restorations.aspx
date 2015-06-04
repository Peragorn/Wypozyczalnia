<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restorations.aspx.cs" Inherits="CarRental.Restorations" MasterPageFile="~/UserMasterPage.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="UnicTranq" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <%--<form id="form1" runat="server">--%>
                <div class="dark matter">
                    <table class="table table-bordered">
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Id_rent") %>' Visible ="False" />
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Trademark") %>' />
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Model") %>' />
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Id_Car") %>' Visible="False" />

                            </td>

                        </tr>
                        <tr>
                            <td>Początek:
                                            <asp:Label ID="Rent_startLabel" runat="server" Text='<%# Eval("Rent_start").ToString().Remove(10) %>' /></td>
                        </tr>
                        <tr>
                            <td>Koniec:
                                            <asp:Label ID="Rent_endLabel" runat="server" Text='<%# Eval("Rent_end").ToString().Remove(10)  %>' /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ButtonX" runat="server" CommandName="zwrot" class="btn btn-danger" Text="Zwrot" />
                            </td>
                        </tr>
                    </table>
                </div>
            <%--</form>--%>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="UnicTranq" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="select c.Id_Car, Rent_start, Rent_end, Login, Model, Trademark, Id_rent from Car c, Rent r where [Login] = @Login and c.Id_car=r.Id_car and Rent_start&gt;getdate() and c.Rent='0';">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="New" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

