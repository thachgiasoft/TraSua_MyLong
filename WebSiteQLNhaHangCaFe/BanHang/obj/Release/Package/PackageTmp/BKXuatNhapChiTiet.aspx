﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="BKXuatNhapChiTiet.aspx.cs" Inherits="BanHang.BKXuatNhapChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%">
        <Items>
            <dx:LayoutGroup Caption="Bảng kê xuất nhập hàng" ColCount="4" HorizontalAlign="Center">
                <Items>
                    <dx:LayoutItem Caption="Theo năm">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer1" runat="server">
                                <dx:ASPxCheckBox ID="rbTheoNam" runat="server" CheckState="Checked" Checked="True" AutoPostBack="True" OnCheckedChanged="rbTheoNam_CheckedChanged">
                                </dx:ASPxCheckBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Theo tháng">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer2" runat="server">
                                <dx:ASPxCheckBox ID="rbTheoThang" runat="server" CheckState="Unchecked" AutoPostBack="True" OnCheckedChanged="rbTheoThang_CheckedChanged">
                                </dx:ASPxCheckBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tùy chọn">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer3" runat="server">
                                <dx:ASPxCheckBox ID="rbTuyChon" runat="server" CheckState="Unchecked" AutoPostBack="True" OnCheckedChanged="rbTuyChon_CheckedChanged">
                                </dx:ASPxCheckBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer4" runat="server">
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Ngày BĐ">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer5" runat="server">
                                <dx:ASPxDateEdit ID="dateNgayBD" runat="server" Width="100%" Enabled="False" DisplayFormatString="dd/MM/yyyy" EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                </dx:ASPxDateEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Ngày KT">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer6" runat="server">
                                <dx:ASPxDateEdit ID="dateNgayKT" runat="server" Width="100%" Enabled="False" DisplayFormatString="dd/MM/yyyy" EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                </dx:ASPxDateEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Nguyên liệu">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer7" runat="server">
                                <dx:ASPxComboBox ID="cmbHangHoa" runat="server" Width="100%">
                                </dx:ASPxComboBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer8" runat="server">
                                <dx:ASPxButton ID="btnXem" runat="server" Text="Xem" Width="100%" OnClick="btnXem_Click">
                                    <Image IconID="print_printarea_16x16">
                                    </Image>
                                </dx:ASPxButton>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
                <SettingsItemCaptions HorizontalAlign="Center" />
                <SettingsItems HorizontalAlign="Center" />
            </dx:LayoutGroup>
        </Items>
        <SettingsItemCaptions HorizontalAlign="Center" />
        <SettingsItemHelpTexts HorizontalAlign="Center" />
        <SettingsItems HorizontalAlign="Center" />
    </dx:ASPxFormLayout>
    <dx:ASPxPopupControl ID="popup" runat="server" AllowDragging="True" AllowResize="True" 
         PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter"  Width="1250px"
         Height="600px" FooterText="Thông tin xuất nhập hàng"
        HeaderText="Thông tin chi tiết" ClientInstanceName="popup" EnableHierarchyRecreation="True">
    </dx:ASPxPopupControl>
</asp:Content>
