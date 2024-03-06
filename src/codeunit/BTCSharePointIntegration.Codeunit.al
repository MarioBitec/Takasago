codeunit 50900 "BTC SharePoint Integration"
{
    //BITEC S19/01052 - Invoice Linkage Service
    //BITEC S19/01359

    procedure AddVendorInvoiceLink(No: Code[20]; Url: Text; Description: Text): Boolean
    var
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        RecordLink: Record "Record Link";
        RecordRef: RecordRef;
    begin
        // Invoice
        if PurchInvHeader.Get(No) then begin
            RecordRef.GetTable(PurchInvHeader);

            RecordLink.Reset();
            RecordLink."Record ID" := RecordRef.RecordId;
            RecordLink.Type := RecordLink.Type::Link;
            RecordLink.URL1 := CopyStr(Url, 1, MaxStrLen(RecordLink.URL1));
            RecordLink.Description := CopyStr(Description, 1, MaxStrLen(RecordLink.Description));
            RecordLink.Created := CurrentDateTime;
            RecordLink."User ID" := CopyStr(UserId, 1, MaxStrLen(RecordLink."User ID"));
            RecordLink.Company := CopyStr(CompanyName, 1, MaxStrLen(RecordLink.Company));
            RecordLink.Notify := true;
            RecordLink."To User ID" := CopyStr(UserId, 1, MaxStrLen(RecordLink."To User ID"));

            exit(RecordLink.Insert(true));
        end;

        // S19/01359
        // Credit Memo
        if PurchCrMemoHdr.Get(No) then begin
            RecordRef.GetTable(PurchCrMemoHdr);

            RecordLink.Reset();
            RecordLink."Record ID" := RecordRef.RecordId;
            RecordLink.Type := RecordLink.Type::Link;
            RecordLink.URL1 := CopyStr(Url, 1, MaxStrLen(RecordLink.URL1));
            RecordLink.Description := CopyStr(Description, 1, MaxStrLen(RecordLink.Description));
            RecordLink.Created := CurrentDateTime;
            RecordLink."User ID" := CopyStr(UserId, 1, MaxStrLen(RecordLink."User ID"));
            RecordLink.Company := CopyStr(CompanyName, 1, MaxStrLen(RecordLink.Company));
            RecordLink.Notify := true;
            RecordLink."To User ID" := CopyStr(UserId, 1, MaxStrLen(RecordLink."To User ID"));

            exit(RecordLink.Insert(true));
        end;

        exit(false);
    end;
}