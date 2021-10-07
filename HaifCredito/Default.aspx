<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HaifCredito.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title></title>
    <asp:PlaceHolder id="metaPlaceHolder" runat="server" />
    <link rel="stylesheet" href="https://cdn.conceptod.co/Content/assets/css/fontawesome/all.min.css" type="text/css" />
    <link rel="stylesheet" href="https://cdn.conceptod.co/Content/css/epaezrfw/columnas_v2.css" />
    <link rel="stylesheet" href="https://cdn.conceptod.co/Content/css/epaezrfw/loadr.css" />
    <link rel="stylesheet" href="https://cdn.conceptod.co/Content/css/epaezrfw/generales.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="Col100">
                    <div class="Spacer20"></div>
                </div>
                <asp:Panel ID="panelForm" runat="server">
                    <div class="Col50_Center">
                        <div class="Col96wp4">
                            <div class="Col100_BlancaRound">
                                <div class="Col96wp4">
                                    <div class="Col100">
                                        <div class="Col40-sm">
                                            <div class="hideMobile">
                                                <img src="https://cdn.conceptod.co/Content/imgs/logosHaif/png/colorHz.png" class="img-responsive70" />
                                            </div>
                                            <div class="hidePc">
                                                <img src="https://cdn.conceptod.co/Content/imgs/logosHaif/png/colorSq.png" class="img-responsive100" />
                                            </div>
                                        </div>
                                        <div class="Col20-sm"></div>
                                        <div class="Col40-sm">
                                            <h1>Simulador de crédito</h1>
                                            <h3>Herramientas financieras</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="Col100">
                                    <div class="splitter100"></div>
                                </div>
                                <div class="Col96wp4">
                                    <div class="Col100">
                                        <div class="Col48">
                                            <div class="Col100">
                                                <span class="textoNegroBold">
                                                    Monto a financiar: <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbMonto" runat="server" ErrorMessage="<i class='fas fa-asterisk fa-fw textoRojoSm'></i>" Display="Dynamic" ValidationGroup="VlGr1"></asp:RequiredFieldValidator>
                                                </span>
                                            </div>
                                            <div class="Col100">
                                                <div class="Spacer10"></div>
                                            </div>
                                            <div class="Col100">
                                                <asp:TextBox ID="tbMonto" runat="server" TextMode="Number" CssClass="inputRed" AutoCompleteType="Disabled" ValidationGroup="VlGr1"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="Col4"></div>
                                        <div class="Col48">
                                            <div class="Col100">
                                                <span class="textoNegroBold">
                                                    Tasa de interés (N.M.V.): <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbTasa" runat="server" ErrorMessage="<i class='fas fa-asterisk fa-fw textoRojoSm'></i>" Display="Dynamic" ValidationGroup="VlGr1"></asp:RequiredFieldValidator>
                                                </span>
                                            </div>
                                            <div class="Col100">
                                                <div class="Spacer10"></div>
                                            </div>
                                            <div class="Col100">
                                                <asp:TextBox ID="tbTasa" runat="server" CssClass="inputRed" AutoCompleteType="Disabled" ValidationGroup="VlGr1"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="tbTasa" FilterMode="ValidChars" ValidChars="0123456789,"></asp:FilteredTextBoxExtender>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="Col100">
                                    <div class="splitter100"></div>
                                </div>
                                <div class="Col96wp4">
                                    <div class="Col100">
                                        <div class="Col48">
                                            <div class="Col100">
                                                <span class="textoNegroBold">
                                                    Plazo (meses): <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbPlazo" runat="server" ErrorMessage="<i class='fas fa-asterisk fa-fw textoRojoSm'></i>" Display="Dynamic" ValidationGroup="VlGr1"></asp:RequiredFieldValidator>
                                                </span>
                                            </div>
                                            <div class="Col100">
                                                <div class="Spacer10"></div>
                                            </div>
                                            <div class="Col100">
                                                <asp:TextBox ID="tbPlazo" runat="server" TextMode="Number" CssClass="inputRed" AutoCompleteType="Disabled" ValidationGroup="VlGr1"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="Col4"></div>
                                        <div class="Col48">
                                            <div class="Col100">
                                                <div class="Spacer20"></div>
                                            </div>
                                            <div class="Col100">
                                                <div class="Col50"></div>
                                                <div class="Col50">
                                                    <div class="btnVerde">
                                                        <asp:LinkButton ID="btnCalcular" runat="server" OnClick="btnCalcularAxn" ValidationGroup="VlGr1"><i class="fas fa-calculator fa-fw"></i> Calcular</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                    
                <asp:Panel ID="panelResultado" runat="server">
                    <div class="Col100">
                        <div class="Spacer30"></div>
                    </div>
                    <div class="Col70_Center">
                        <div class="Col96wp4">
                            <div class="Col100_VerdeRound">
                                <div class="Col96wp4">
                                    <div class="Col100">
                                        <div class="Col70-sm">
                                            <h6><i class="fas fa-calculator fa-fw"></i> Simulación</h6>
                                        </div>
                                        <div class="Col30-sm">
                                            <div class="btnVerde">
                                                <a href="Default.aspx">
                                                    <i class="fas fa-sync fa-fw"></i> Nuevo cálculo
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="Col100">
                                    <div class="splitter100"></div>
                                </div>
                                <div class="Col96wp4">
                                    <div class="Col100">
                                        <div class="Col30">
                                            <div class="Col100">
                                                <div class="Col8-sm">
                                                    <i class="fas fa-dollar-sign fa-fw textoVerdeSm"></i>
                                                </div>
                                                <div class="Col2-sm"></div>
                                                <div class="Col40-sm">
                                                    <span class="textoNegroSm">
                                                        Monto solicitado:
                                                    </span>
                                                </div>
                                                <div class="Col50-sm">
                                                    <span class="textoVerdeSm spanFull textoDerecha">
                                                        <asp:Literal ID="printMontoSolicitado" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="Col5"></div>
                                        <div class="Col30">
                                            <div class="Col100">
                                                <div class="Col8-sm">
                                                    <i class="fas fa-university fa-fw textoRojoSm"></i>
                                                </div>
                                                <div class="Col2-sm"></div>
                                                <div class="Col40-sm">
                                                    <span class="textoNegroSm">
                                                        Tasa de interés:
                                                    </span>
                                                </div>
                                                <div class="Col50-sm">
                                                    <span class="textoRojoSm spanFull textoDerecha">
                                                        <asp:Literal ID="printTasaInteres" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="Col5"></div>
                                        <div class="Col30">
                                            <div class="Col100">
                                                <div class="Col8-sm">
                                                    <i class="fas fa-calendar-check fa-fw textoAzul2Sm"></i>
                                                </div>
                                                <div class="Col2-sm"></div>
                                                <div class="Col30-sm">
                                                    <span class="textoNegroSm">
                                                        Plazo:
                                                    </span>
                                                </div>
                                                <div class="Col60-sm">
                                                    <span class="textoAzul2Sm spanFull textoDerecha">
                                                        <asp:Literal ID="printPlazo" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="Col100">
                                    <div class="splitter100"></div>
                                </div>
                                <div class="Col96wp4">
                                    <div class="Col100">
                                        <div class="Col30">
                                            <div class="Col100">
                                                <div class="Col8-sm">
                                                    <i class="fas fa-dollar-sign fa-fw textoRojoSm"></i>
                                                </div>
                                                <div class="Col2-sm"></div>
                                                <div class="Col40-sm">
                                                    <span class="textoNegroSm">
                                                        Cuota mensual:
                                                    </span>
                                                </div>
                                                <div class="Col50-sm">
                                                    <span class="textoRojoSm spanFull textoDerecha">
                                                        <asp:Literal ID="printCuotaMensual" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="Col5"></div>
                                        <div class="Col30">
                                            <div class="Col100">
                                                <div class="Col8-sm">
                                                    <i class="fas fa-university fa-fw textoRojoSm"></i>
                                                </div>
                                                <div class="Col2-sm"></div>
                                                <div class="Col45-sm">
                                                    <span class="textoNegroSm">
                                                        Intereses pagados:
                                                    </span>
                                                </div>
                                                <div class="Col45-sm">
                                                    <span class="textoRojoSm spanFull textoDerecha">
                                                        <asp:Literal ID="printInteresesPagados" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="Col5"></div>
                                        <div class="Col30">
                                            <div class="Col100">
                                                <div class="Col8-sm">
                                                    <i class="fas fa-dollar-sign fa-fw textoAzul2Sm"></i>
                                                </div>
                                                <div class="Col2-sm"></div>
                                                <div class="Col40-sm">
                                                    <span class="textoNegroSm">
                                                        Total pagado:
                                                    </span>
                                                </div>
                                                <div class="Col50-sm">
                                                    <span class="textoAzul2Sm spanFull textoDerecha">
                                                        <asp:Literal ID="printTotalPagado" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="Col96wp4">
                            <div class="Col100_VerdeRound">
                                <div class="Col96wp4">
                                    <h6><i class="fas fa-info-circle fa-fw"></i> Tabla de amortización</h6>
                                </div>
                                <div class="Col100">
                                    <div class="splitter100"></div>
                                </div>
                                <div class="Col96wp4">
                                    <div class="Col100">
                                        <div class="Col8-sm">
                                            <span class="textoNegroBold">
                                                Cuota
                                            </span>
                                        </div>
                                        <div class="Col2-sm"></div>
                                        <div class="Col20-sm">
                                            <span class="textoNegroBold spanFull textoDerecha">
                                                Pago a capital
                                            </span>
                                        </div>
                                        <div class="Col2-sm"></div>
                                        <div class="Col20-sm">
                                            <span class="textoNegroBold spanFull textoDerecha">
                                                Abono a interés
                                            </span>
                                        </div>
                                        <div class="Col2-sm"></div>
                                        <div class="Col20-sm">
                                            <span class="textoNegroBold spanFull textoDerecha">
                                                Pago total
                                            </span>
                                        </div>
                                        <div class="Col2-sm"></div>
                                        <div class="Col24-sm">
                                            <span class="textoNegroBold spanFull textoDerecha">
                                                Saldo
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <asp:Literal ID="printTablaAmortz" runat="server"></asp:Literal>

                                

                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
                    <ProgressTemplate>
                        <div class="divWaiting">            
                            <div class="Col100">
                                <i class="fa fa-spinner fa-pulse fa-2x fa-fw textoAmarillo"></i>
                            </div>
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div>
            
            
            <br /><br />
            <asp:Literal ID="cuotaPrint" runat="server"></asp:Literal>
            <br /><br />
            <asp:Literal ID="amortPrint" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
