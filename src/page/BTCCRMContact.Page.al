page 50900 "BTC CRM Contact"
{
    APIGroup = 'takasago';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'API Contact', Comment = 'ESP="API Contacto"';
    Description = 'Página expuesta como WS para CRM';
    DelayedInsert = false;
    DeleteAllowed = false;
    EntityCaption = 'crmContact';
    EntityName = 'crmContact';
    EntitySetCaption = 'crmContacts';
    EntitySetName = 'crmContacts';
    Extensible = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "Contact";
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
                field(salespersonCode; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code', Comment = 'ESP="Cód. vendedor"';
                    Editable = false;
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code', Comment = 'ESP="Cód. divisa"';
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address', Comment = 'ESP="Dirección"';
                }
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2', Comment = 'ESP="Dirección 2"';
                }
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code', Comment = 'ESP="Código postal"';
                }
                field(city; Rec.City)
                {
                    Caption = 'City', Comment = 'ESP="Población"';
                }
                field(countryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code', Comment = 'ESP="Cód. país/región"';
                }
                field(county; Rec.County)
                {
                    Caption = 'County', Comment = 'ESP="Provincia"';
                }
                field(eMail; Rec."E-Mail")
                {
                    Caption = 'E-Mail', Comment = 'ESP="Correo electrónico"';
                }
                field(faxNo; Rec."Fax No.")
                {
                    Caption = 'Fax No.', Comment = 'ESP="Nº fax"';
                }
                field(firstName; Rec."First Name")
                {
                    Caption = 'First Name', Comment = 'ESP="Primer nombre"';
                }
                field(middleName; Rec."Middle Name")
                {
                    Caption = 'Middle Name', Comment = 'ESP="1º Apellido"';
                }
                field(surname; Rec.Surname)
                {
                    Caption = 'Surname', Comment = 'ESP="2º Apellido"';
                }
                field(homePage; Rec."Home Page")
                {
                    Caption = 'Home Page', Comment = 'ESP="Página Web"';
                }
                field(mobilePhoneNo; Rec."Mobile Phone No.")
                {
                    Caption = 'Mobile Phone No.', Comment = 'ESP="Nº teléfono móvil"';
                }
                field(pager; Rec.Pager)
                {
                    Caption = 'Pager', Comment = 'ESP="Nº buscapersona"';
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.', Comment = 'ESP="Nº teléfono"';
                }
                field(type; Rec.Type)
                {
                    Caption = 'Type', Comment = 'ESP="Tipo"';
                }
                field(companyNo; Rec."Company No.")
                {
                    Caption = 'Company No.', Comment = 'ESP="Nº empresa"';
                }
                field(blocked; Rec.Blocked)
                {
                    Caption = 'Blocked', Comment = 'ESP="Bloqueado"';
                }
                field(bTCLastDateTimeModified; Rec."BTC Last Date Time Modified")
                {
                    Caption = 'BTC Last Date Time Modified', Comment = 'ESP="BTC Fecha hora últ. modificación"';
                }
                field(lastDateModified; Rec."Last Date Modified")
                {
                    Caption = 'Last Date Modified', Comment = 'ESP="Fecha últ. modificación"';
                }
                field(companyName; Rec."Company Name")
                {
                    Caption = 'Company Name', Comment = 'ESP="Nombre empresa"';
                }
                field(customerNo; CustomerNo)
                {
                    Caption = 'Customer No.', Comment = 'ESP="Nº cliente"';
                }
                field(contactoDocumentacionTecnica; Rec."Contacto Documentacion tecnica")
                {
                    Caption = 'Contacto Documentacion tecnica', Comment = 'ESP="Contacto Documentación técnica"';
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.SetRange(Type, Rec.Type::Person);
        Rec.SetFilter("Company No.", '<> %1', '');
    end;

    trigger OnAfterGetRecord()
    begin
        Clear(CustomerNo);
        CustomerNo := GetCustomerContact(Rec."Company No.");
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        Contact: Record Contact;
        CompNo: Code[20];
        Text001Err: label 'Exist a register with %1="%2, %3=%4, %5=%6, %7=%8', comment = 'ESP="Existe ya un registro con %1="%2, %3=%4, %5=%6, %7=%8"';
    begin
        IF (Rec."First Name" <> '') OR (Rec."Middle Name" <> '') OR (Rec.Surname <> '') OR (Rec."Phone No." <> '') THEN BEGIN
            Contact.RESET();
            Contact.SETRANGE("First Name", Rec."First Name");
            Contact.SETRANGE("Middle Name", Rec."Middle Name");
            Contact.SETRANGE(Surname, Rec.Surname);
            Contact.SETRANGE("Phone No.", Rec."Phone No.");
            IF not Contact.IsEmpty THEN
                ERROR(Text001Err, Rec.FieldCaption("First Name"), Rec."First Name", Rec.FieldCaption("Middle Name"), Rec."Middle Name", Rec.FieldCaption(Surname), Rec.Surname, Rec.FieldCaption("Phone No."), Rec."Phone No.");
        END;
        IF CustomerNo <> '' THEN BEGIN
            CompNo := GetCompanyByCustomer(CustomerNo);
            IF Rec."Company No." <> CompNo THEN
                Rec.VALIDATE("Company No.", CompNo);
        END;
    end;

    trigger OnModifyRecord(): Boolean
    var
        CompNo: Code[20];
    begin
        IF (CustomerNo <> '') AND (CustomerNo <> 'EMPTY') THEN BEGIN
            CompNo := GetCompanyByCustomer(CustomerNo);
            IF Rec."Company No." <> CompNo THEN
                Rec.VALIDATE("Company No.", CompNo);
        END ELSE
            IF (CustomerNo = 'EMPTY') THEN
                Rec.VALIDATE("Company No.", '');
    end;

    local procedure GetCustomerContact(pContactNo: Code[20]) CustomerNo: Code[20]
    var
        ContactBusinessRelation: Record "Contact Business Relation";
    begin
        CustomerNo := '';
        ContactBusinessRelation.RESET();
        ContactBusinessRelation.SETRANGE("Link to Table", ContactBusinessRelation."Link to Table"::Customer);
        ContactBusinessRelation.SETRANGE("Contact No.", pContactNo);
        IF ContactBusinessRelation.FINDFIRST() THEN
            CustomerNo := ContactBusinessRelation."No.";
    end;

    local procedure GetCompanyByCustomer(pCustomerNo: Code[20]) pContactNo: Code[20]
    var
        ContactBusinessRelation: Record "Contact Business Relation";
    begin
        pContactNo := '';
        ContactBusinessRelation.RESET();
        ContactBusinessRelation.SETRANGE("Link to Table", ContactBusinessRelation."Link to Table"::Customer);
        ContactBusinessRelation.SETRANGE("No.", pCustomerNo);
        IF ContactBusinessRelation.FINDFIRST() THEN
            pContactNo := ContactBusinessRelation."Contact No.";
    end;

    var
        CustomerNo: Code[20];
}