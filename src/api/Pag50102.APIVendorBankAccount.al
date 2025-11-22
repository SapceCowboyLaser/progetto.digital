page 50102 "API Vendor Bank Account"
{
    PageType = API;
    APIPublisher = 'Gianluca';
    APIGroup = 'custom';
    APIVersion = 'v1.0';
    EntityName = 'vendorBankAccount';
    EntitySetName = 'vendorBankAccounts';
    SourceTable = "Vendor Bank Account";
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
                field(vendorNo; Rec."Vendor No.")
                {
                    Caption = 'Vendor No.';
                }
                field(code; Rec.Code)
                {
                    Caption = 'Code';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(bankAccountNo; Rec."Bank Account No.")
                {
                    Caption = 'Bank Account No.';
                }
                field(iban; Rec.IBAN)
                {
                    Caption = 'IBAN';
                }
                field(swiftCode; Rec."SWIFT Code")
                {
                    Caption = 'SWIFT Code';
                }
            }
        }
    }
}
