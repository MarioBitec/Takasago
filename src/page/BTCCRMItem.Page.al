page 50903 "BTC CRM Item"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Item', Comment = 'ESP="API Producto"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmItem';
    EntityName = 'crmItem';
    EntitySetCaption = 'crmItems';
    EntitySetName = 'crmItems';
    Extensible = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = Item;
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
                field(description; Rec.Description)
                {
                    Caption = 'Description', Comment = 'ESP="Descripción"';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price', Comment = 'ESP="Precio venta"';
                }
                field(standardCost; Rec."Standard Cost")
                {
                    Caption = 'Standard Cost', Comment = 'ESP="Coste estándar"';
                }
                field(unitCost; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost', Comment = 'ESP="Coste unitario"';
                }
                field(unitVolume; Rec."Unit Volume")
                {
                    Caption = 'Unit Volume', Comment = 'ESP="Volumen"';
                }
                field(grossWeight; Rec."Gross Weight")
                {
                    Caption = 'Gross Weight', Comment = 'ESP="Peso bruto"';
                }
                field(vendorNo; Rec."Vendor No.")
                {
                    Caption = 'Vendor No.', Comment = 'ESP="Nº proveedor"';
                }
                field(vendorItemNo; Rec."Vendor Item No.")
                {
                    Caption = 'Vendor Item No.', Comment = 'ESP="Cód. producto proveedor"';
                }
                field(inventory; Rec.Inventory)
                {
                    Caption = 'Inventory', Comment = 'ESP="Inventario"';
                }
                field(baseUnitOfMeasure; Rec."Base Unit of Measure")
                {
                    Caption = 'Base Unit of Measure', Comment = 'ESP="Unidad medida base"';
                }
                field(familyDescription; FamilyDescription)
                {
                    Caption = 'FamilyDescription', Comment = 'ESP="FamilyDescription"';
                    Editable = false;
                }
                field(lastDateTimeModified; Rec."Last DateTime Modified")
                {
                    Caption = 'Last DateTime Modified', Comment = 'ESP="DateTime de última modificación"';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        AgrupFamilia: Record "Agrup. familia";
    begin
        CLEAR(FamilyDescription);
        AgrupFamilia.RESET();
        IF AgrupFamilia.GET(Rec."Cod. agrup. familia") THEN
            FamilyDescription := AgrupFamilia.Descripcion;
    end;

    var
        FamilyDescription: Text;
}