<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="kayit.aspx.cs" Inherits="kayit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    
   
    <div class="container">
        
        <div class="row">
            <div class="col-md-6">
                <div class="form-horizontal">
                    <div class="form-group">   
                        <asp:Label runat="server" AssociatedControlID="CariKodu" CssClass="col-md-3 control-label">Carikod</asp:Label>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="CariKodu" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CariKodu"
                                CssClass="text-danger" ErrorMessage="Carikod zorunlu." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Aciklama" CssClass="col-md-3 control-label">Açıklama</asp:Label>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="Aciklama" CssClass="form-control" TextMode="MultiLine" Height="80px" />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Acilis" CssClass="col-md-3 control-label">Açılış Tarihi</asp:Label>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="Acilis" CssClass="form-control" />
                            
                                <%--<input id="datepicker" width="276" />--%>
                                <script>
                                    $('#dAcilis').datepicker({
                                        uiLibrary: 'bootstrap4'
                                    });
                                </script>
                            
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Acilis"
                                CssClass="text-danger" ErrorMessage="Açılış tarihi girin." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Kapanis" CssClass="col-md-3 control-label">Kapanış Tarihi</asp:Label>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="Kapanis" CssClass="form-control" />
                            <%--<asp:ImageButton ID="ImageButton2" runat="server" Height="29px" ImageUrl="~/images.png" OnClick="ImageButton2_Click" Width="34px" />--%>
                            <%--<asp:Calendar ID="Cal2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="146px" Width="194px" OnSelectionChanged="Cal2_SelectionChanged" Visible="False">
                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Kapanis"
                                CssClass="text-danger" ErrorMessage="Kapanış tarihi girin." />--%>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Alan" CssClass="col-md-3 control-label">Metrekare</asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox runat="server" ID="Alan" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Alan"
                            CssClass="text-danger" ErrorMessage="Kapanış tarihi girin." />
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Durum" CssClass="col-md-3 control-label">Durum</asp:Label>
                    <div class="col-md-9">
                        <asp:RadioButtonList ID="Durum" runat="server">
                            <asp:ListItem>Açık</asp:ListItem>
                            <asp:ListItem>Kapalı</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Durum"
                            CssClass="text-danger"  ErrorMessage="Durum seçin."/>
                    </div>
                </div>
                        
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Segment" CssClass="col-md-3 control-label">Segment</asp:Label>
                    <div class="col-md-9">
                        <asp:DropDownList ID="Segment" runat="server">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Segment"
                            CssClass="text-danger" ErrorMessage="Segment seçin."/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-3 col-md-9">
                        <br />
                        <br />
                        <asp:Button runat="server" Text="Kaydet" CssClass="btn btn-primary" Width="100px" OnClick="Unnamed14_Click" />
                    </div>
                </div>

                </div>
            </div>
        </div>
                    
    
            
            <%--BUTON KONTROL EDİLECEK--%>
                
                    <%--<asp:Button ID="btnKayit" OnClick="btnKayit_Click" runat="server" Text="Kaydet" />--%>
                
    
    
</asp:Content>

