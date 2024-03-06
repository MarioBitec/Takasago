page 50901 "BTC CRM Customer"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Customer', Comment = 'ESP="API Cliente"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmCustomer';
    EntityName = 'crmCustomer';
    EntitySetCaption = 'crmCustomers';
    EntitySetName = 'crmCustomers';
    Extensible = true;
    InsertAllowed = false;
    ModifyAllowed = true;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "Customer";
    Editable = true;


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
                field(salespersonCode; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code', Comment = 'ESP="Cód. vendedor"';
                    Editable = false;
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name', Comment = 'ESP="Nombre"';
                    Editable = false;
                }
                field(contact; Rec.Contact)
                {
                    Caption = 'Contact', Comment = 'ESP="Contacto"';
                    Editable = false;
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address', Comment = 'ESP="Dirección"';
                    Editable = false;
                }
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2', Comment = 'ESP="Dirección 2"';
                    Editable = false;
                }
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code', Comment = 'ESP="Código postal"';
                    Editable = false;
                }
                field(city; Rec.City)
                {
                    Caption = 'City', Comment = 'ESP="Población"';
                    Editable = false;
                }
                field(countryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code', Comment = 'ESP="Cód. país/región"';
                    Editable = false;
                }
                field(county; Rec.County)
                {
                    Caption = 'County', Comment = 'ESP="Provincia"';
                    Editable = false;
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code', Comment = 'ESP="Cód. divisa"';
                    Editable = false;
                }
                field(eMail; Rec."E-Mail")
                {
                    Caption = 'E-Mail', Comment = 'ESP="Correo electrónico"';
                    Editable = false;
                }
                field(faxNo; Rec."Fax No.")
                {
                    Caption = 'Fax No.', Comment = 'ESP="Nº fax"';
                    Editable = false;
                }
                field(homePage; Rec."Home Page")
                {
                    Caption = 'Home Page', Comment = 'ESP="Página Web"';
                    Editable = false;
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.', Comment = 'ESP="Nº teléfono"';
                    Editable = false;
                }
                field(shipmentMethodCode; Rec."Shipment Method Code")
                {
                    Caption = 'Shipment Method Code', Comment = 'ESP="Cód. condiciones envío"';
                    Editable = false;
                }
                field(shippingAgentCode; Rec."Shipping Agent Code")
                {
                    Caption = 'Shipping Agent Code', Comment = 'ESP="Cód. transportista"';
                    Editable = false;
                }
                field(paymentTermsCode; Rec."Payment Terms Code")
                {
                    Caption = 'Payment Terms Code', Comment = 'ESP="Cód. términos pago"';
                    Editable = false;
                }
                field(companyNo; Rec."Credit Limit (LCY)")
                {
                    Caption = 'Credit Limit (LCY)', Comment = 'ESP="Nº empresa"';
                    Editable = false;
                }
                field(primaryContactNo; Rec."Primary Contact No.")
                {
                    Caption = 'Primary Contact No.', Comment = 'ESP="Nº contacto principal"';
                    Editable = false;
                }
                field(codigoCS; Rec."Codigo CS")
                {
                    Caption = 'Codigo CS', Comment = 'ESP="Código CS"';
                    Editable = false;
                }
                field(codVendedorInterno; Rec."Cod. vendedor interno")
                {
                    Caption = 'Cod. vendedor interno', Comment = 'ESP="Cód. vendedor interno"';
                    Editable = false;
                }
                field(correoEnvioFacturaWau; Rec.CorreoEnvioFactura_wau)
                {
                    Caption = 'CorreoEnvioFactura_wau', Comment = 'ESP="CorreoEnvioFactura_wau"';
                    Editable = false;
                }
                field(customerNo; Rec."Correo envio aviso expedicion")
                {
                    Caption = 'Correo envio aviso expedicion', Comment = 'ESP="Correo envío aviso expedición"';
                    Editable = false;
                }
                field(lastModifiedDateTime; Rec."Last Modified Date Time")
                {
                    Caption = 'Last Modified Date Time', Comment = 'ESP="Fecha y hora de última modificación"';
                    Editable = false;
                }
                field(correoDocumentacionTecnicaWau; Rec.CorreoDocumentacionTecnica_wau)
                {
                    Caption = 'CorreoDocumentacionTecnica_wau', Comment = 'ESP="Correo documentación técnica"';
                    Editable = false;
                }
            }
        }
    }

}