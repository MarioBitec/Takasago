page 50904 "BTC CRM Unit of measure"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Unit of measure', Comment = 'ESP="API Unidad de medida"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmUnitOfMeasure';
    EntityName = 'crmUnitOfMeasure';
    EntitySetCaption = 'crmUnitOfMeasures';
    EntitySetName = 'crmUnitOfmeasures';
    Extensible = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "Unit of measure";
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
                field("code"; Rec.Code)
                {
                    Caption = 'Code', Comment = 'ESP="Código"';
                }
                field(lastModifiedDateTime; Rec."Last Modified Date Time")
                {
                    Caption = 'Last Modified Date Time', Comment = 'ESP="Fecha y hora de última modificación"';
                }
            }
        }
    }
}