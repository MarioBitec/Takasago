page 50905 "BTC CRM Resource"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Resource', Comment = 'ESP="API Recurso"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmResource';
    EntityName = 'crmResource';
    EntitySetCaption = 'crmResources';
    EntitySetName = 'crmResources';
    Extensible = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = Resource;
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
                field(no; Rec."No.")
                {
                    Caption = 'No.', Comment = 'ESP="Nº"';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name', Comment = 'ESP="Nombre"';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price', Comment = 'ESP="Precio venta"';
                }
                field(unitCost; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost', Comment = 'ESP="Coste unitario"';
                }
                field(vendorNo; Rec."Vendor No.")
                {
                    Caption = 'Vendor No.', Comment = 'ESP="Nº proveedor"';
                }
                field(capacity; Rec.Capacity)
                {
                    Caption = 'Capacity', Comment = 'ESP="Capacidad"';
                }
                field(lastDateModified; Rec."Last Date Modified")
                {
                    Caption = 'Last Date Modified', Comment = 'ESP="Fecha últ. modificación"';
                }
            }
        }
    }
}