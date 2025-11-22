page 50104 "API Purchase Invoice Line"
{
    PageType = API;
    APIPublisher = 'Gianluca';
    APIGroup = 'custom';
    APIVersion = 'v1.0';
    EntityName = 'purchaseInvoiceLine';
    EntitySetName = 'purchaseInvoiceLines';
    SourceTable = "Purchase Line";
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
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
                field(type; Rec.Type)
                {
                    Caption = 'Type';
                }
                field(number; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(directUnitCost; Rec."Direct Unit Cost")
                {
                    Caption = 'Direct Unit Cost';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Rec."Document Type" := Rec."Document Type"::Invoice;
    end;
}
