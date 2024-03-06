page 50908 "BTC CRM Posted Sales Inv. List"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Posted Sales Inv. List', Comment = 'ESP="Listado Facturas de venta registradas"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmPostedSalesInvList';
    EntityName = 'crmPostedSalesInvList';
    EntitySetCaption = 'crmPostedSalesInvLists';
    EntitySetName = 'crmPostedSalesInvLists';
    Extensible = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    ODataKeyFields = SystemId;
    PageType = API;
    Editable = false;
    SourceTable = "Sales Invoice Header";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(systemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Caption = 'System ID', Comment = 'ESP="ID del Sistema"';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No.', Comment = 'ESP="Nº"';
                }
                field(salespersonCode; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code', Comment = 'ESP="Cód. vendedor"';
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code', Comment = 'ESP="Cód. divisa"';
                    Editable = false;
                }
                field(dueDate; Rec."Due Date")
                {
                    Caption = 'Due Date', Comment = 'ESP="Fecha vencimiento"';
                }
                field(shipToName; Rec."Ship-to Name")
                {
                    Caption = 'Ship-to Name', Comment = 'ESP="Nombre dirección de envío"';
                }
                field(shipToAddress; Rec."Ship-to Address")
                {
                    Caption = 'Ship-to Address', Comment = 'ESP="Dirección de envío"';
                }
                field(shipToAddress2; Rec."Ship-to Address 2")
                {
                    Caption = 'Ship-to Address 2', Comment = 'ESP="Dirección de envío 2"';
                }
                field(shipToCity; Rec."Ship-to City")
                {
                    Caption = 'Ship-to City', Comment = 'ESP="Población dirección de envío"';
                }
                field(shipToCountryRegionCode; Rec."Ship-to Country/Region Code")
                {
                    Caption = 'Ship-to Country/Region Code', Comment = 'ESP="Cód. país/región dirección de envío"';
                }
                field(shipToPostCode; Rec."Ship-to Post Code")
                {
                    Caption = 'Ship-to Post Code', Comment = 'ESP="C.P. dirección de envío"';
                }
                field(shipToCounty; Rec."Ship-to County")
                {
                    Caption = 'Ship-to County', Comment = 'ESP="Provincia dirección de envío"';
                }
                field(shipmentDate; Rec."Shipment Date")
                {
                    Caption = 'Shipment Date', Comment = 'ESP="Fecha envío"';
                }
                field(billToName; Rec."Bill-to Name")
                {
                    Caption = 'Bill-to Name', Comment = 'ESP="Fact. a-Nombre"';
                }
                field(billToAddress; Rec."Bill-to Address")
                {
                    Caption = 'Bill-to Address', Comment = 'ESP="Fact. a-Dirección"';
                }
                field(billToAddress2; Rec."Bill-to Address 2")
                {
                    Caption = 'Bill-to Address 2', Comment = 'ESP="Fact. a-Dirección 2"';
                }
                field(billToCity; Rec."Bill-to City")
                {
                    Caption = 'Bill-to City', Comment = 'ESP="Fact. a-Población"';
                }
                field(billToCountryRegionCode; Rec."Bill-to Country/Region Code")
                {
                    Caption = 'Bill-to Country/Region Code', Comment = 'ESP="Fact. a-Cód. país/región"';
                }
                field(billToPostCode; Rec."Bill-to Post Code")
                {
                    Caption = 'Bill-to Post Code', Comment = 'ESP="Fact. a-C.P."';
                }
                field(billToCounty; Rec."Bill-to County")
                {
                    Caption = 'Bill-to County', Comment = 'ESP="Fact. a-Provincia"';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount', Comment = 'ESP="Importe"';
                    Editable = false;
                }
                field(amountIncludingVAT; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT', Comment = 'ESP="Importe IVA incl."';
                    Editable = false;
                }
                field(invoiceDiscountAmount; Rec."Invoice Discount Amount")
                {
                    Caption = 'Invoice Discount Amount', Comment = 'ESP="Importe descuento factura"';
                    Editable = false;
                }
                field(shippingAgentCode; Rec."Shipping Agent Code")
                {
                    Caption = 'Shipping Agent Code', Comment = 'ESP="Cód. transportista"';
                }
                field(paymentTermsCode; Rec."Payment Terms Code")
                {
                    Caption = 'Payment Terms Code', Comment = 'ESP="Cód. términos pago"';
                }
                field(currencyFactor; Rec."Currency Factor")
                {
                    Caption = 'Currency Factor', Comment = 'ESP="Factor divisa"';
                }
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.', Comment = 'ESP="Factura-a Nº cliente"';
                }
                field(lastModifiedDateTime; Rec."BTC Last Modified Date Time")
                {
                    Caption = 'Last Modified Date Time', Comment = 'ESP="Fecha y hora de última modificación"';
                    Editable = false;
                }
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'Posting Date', Comment = 'ESP="Fecha registro"';
                }
            }
        }
    }
}