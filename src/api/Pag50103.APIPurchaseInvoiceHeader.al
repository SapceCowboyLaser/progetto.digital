page 50103 "API Purchase Invoice Header"
{
    PageType = API;
    APIPublisher = 'Gianluca';
    APIGroup = 'custom';
    APIVersion = 'v1.0';
    EntityName = 'purchaseInvoice';
    EntitySetName = 'purchaseInvoices';
    SourceTable = "Purchase Header";
    SourceTableView = where("Document Type" = const(Invoice));
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(number; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(buyFromVendorNo; Rec."Buy-from Vendor No.")
                {
                    Caption = 'Buy-from Vendor No.';
                }
                field(payToVendorNo; Rec."Pay-to Vendor No.")
                {
                    Caption = 'Pay-to Vendor No.';
                }
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                }
                field(dueDate; Rec."Due Date")
                {
                    Caption = 'Due Date';
                }
                field(vendorInvoiceNo; Rec."Vendor Invoice No.")
                {
                    Caption = 'Vendor Invoice No.';
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field(linkFattura; Rec."Link fattura")
                {
                    Caption = 'Link fattura';
                }
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Rec."Document Type" := Rec."Document Type"::Invoice;
    end;
}
