page 50907 "BTC CRM Posted Sales Inv Lines"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Posted Sales Inv. Lines', Comment = 'ESP="API Líneas de factura registrada"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmPostedSalesInvLine';
    EntityName = 'crmPostedSalesInvLine';
    EntitySetCaption = 'crmPostedSalesInvLines';
    EntitySetName = 'crmPostedSalesInvLines';
    Extensible = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "Sales Invoice Line";
    Editable = false;

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
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity', Comment = 'ESP="Cantidad"';
                }
                field(lineDiscountAmount; Rec."Line Discount Amount")
                {
                    Caption = 'Line Discount Amount', Comment = 'ESP="Importe dto. línea"';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price', Comment = 'ESP="Precio venta"';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount', Comment = 'ESP="Importe"';
                }
                field(amountIncludingVAT; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT', Comment = 'ESP="Importe IVA incl."';
                }
                field(currencyCode; CurrencyCode)
                {
                    Caption = 'Currency Code', Comment = 'ESP="Cód. divisa"';
                }
                field(currencyFactor; CurrencyFactor)
                {
                    Caption = 'Currency Factor', Comment = 'ESP="Factor divisa"';
                }
                field(amountEUR; AmountEUR)
                {
                    Caption = 'Amount EUR', Comment = 'ESP=""Importe EUR';
                }
                field(amountInclVATEUR; AmountInclVATEUR)
                {
                    Caption = 'Amount Including VAT EUR', Comment = 'ESP="Importe IVA incl. EUR"';
                }
                field(type; Rec.Type)
                {
                    Caption = 'Type', Comment = 'ESP="Tipo"';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No.', Comment = 'ESP="Nº"';
                }
                field(unitOfMeasure; Rec."Unit of Measure")
                {
                    Caption = 'Unit of Measure', Comment = 'ESP="Unidad medida"';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        SalesInvoiceHeader.Reset();
        ;
        IF SalesInvoiceHeader.GET(Rec."Document No.") THEN BEGIN
            CurrencyCode := SalesInvoiceHeader."Currency Code";
            IF CurrencyCode <> '' THEN
                CurrencyFactor := SalesInvoiceHeader."Currency Factor"
            ELSE
                CurrencyFactor := 1;
            IF CurrencyFactor > 0 THEN BEGIN
                AmountEUR := Rec.Amount / CurrencyFactor;
                AmountInclVATEUR := Rec."Amount Including VAT" / CurrencyFactor;
            END;
        END;
    end;

    var
        CurrencyCode: Code[10];
        CurrencyFactor: Decimal;
        AmountEUR: Decimal;
        AmountInclVATEUR: Decimal;
}