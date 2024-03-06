page 50902 "BTC CRM Currency"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Currency', Comment = 'ESP="API Divisa"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmCurrency';
    EntityName = 'crmCurrency';
    EntitySetCaption = 'crmCurrencys';
    EntitySetName = 'crmCurrencys';
    Extensible = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "Currency";
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
                field(code; Rec.Code)
                {
                    Caption = 'Code', Comment = 'ESP="Código"';
                }
                field(symbol; Rec.Symbol)
                {
                    Caption = 'Symbol', Comment = 'ESP="Símbolo"';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description', Comment = 'ESP="Descripción"';
                }
                field(lastModifiedDateTime; Rec."Last Modified Date Time")
                {
                    Caption = 'Last Modified Date Time', Comment = 'ESP="Fecha y hora de última modificación"';
                }
            }
        }
    }
}