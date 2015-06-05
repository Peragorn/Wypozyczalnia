<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restorations.aspx.cs" Inherits="CarRental.Restorations" MasterPageFile="~/UserMasterPage.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <style type="text/css">
        #fixhet {
                width: 500px;
            }
                #content {
                    margin: 0 auto;
                    padding: 100px 0;
                }

        </style>
<%--    <asp:DataList ID="DataList1" runat="server" DataSourceID="UnicTranq" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
                <div class="dark matter">
                    <table class="table table-bordered">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Trademark") %>' />
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Model") %>' />

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
        </ItemTemplate>
    </asp:DataList>--%>
    <asp:FormView ID="RestoFormView"
        DataSourceID="UnicTranq"
        AllowPaging="True"
        runat="server">
                    <ItemTemplate>
                <div class="dark-matter">
                    <table class="table table-bordered" id="content">
                        <tr>
                            <td id="fixhet">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Trademark") %>' />
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Model") %>' />

                            </td>

                        </tr>
                        <tr>
                            <td id="fixhet">Początek:
                                            <asp:Label ID="Rent_startLabel" runat="server" Text='<%# Eval("Rent_start").ToString().Remove(10) %>' /></td>
                        </tr>
                        <tr>
                            <td id="fixhet">Koniec:
                                            <asp:Label ID="Rent_endLabel" runat="server" Text='<%# Eval("Rent_end").ToString().Remove(10)  %>' /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ButtonX" runat="server" CommandName="zwrot" class="btn btn-danger" Text="Zwrot" />
                            </td>
                        </tr>
                    </table>
                </div>
        </ItemTemplate>
                <PagerTemplate>
            <div class="inner cover">
                <table style="margin: 0 auto;">
                    <tr>
                        <td id="fixhet">
                            <asp:LinkButton ID="FirstButton" CommandName="Page" CommandArgument="First" Text="<<" runat="server" /></td>
                        <td>
                            <asp:LinkButton ID="PrevButton" CommandName="Page" CommandArgument="Prev" Text="<" runat="server" /></td>
                        <td>
                            <asp:LinkButton ID="NextButton" CommandName="Page" CommandArgument="Next" Text=">" runat="server" /></td>
                        <td id="fixhet">
                            <asp:LinkButton ID="LastButton" CommandName="Page" CommandArgument="Last" Text=">>" runat="server" /></td>
                    </tr>
                </table>
            </div>
        </PagerTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="UnicTranq" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="select Rent_start, Rent_end, Model, Trademark
from Car c, Rent r 
where [Login] = @Login and c.Id_car=r.Id_car and Rent_start&lt;=getdate() and c.Rent='0' and Rent_start=
(select max(Rent_start) from Rent r1 where r1.Id_car=r.Id_car and
exists(select Id_car, count(*) total from Rent r2 where r2.Id_car=r1.Id_car group by Id_car having count(*)&gt;=1));">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="New" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

