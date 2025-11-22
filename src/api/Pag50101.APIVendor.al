page 50101 "API Vendor"
{
    PageType = API;
    APIPublisher = 'Gianluca';
    APIGroup = 'custom';
    APIVersion = 'v1.0';
    EntityName = 'vendor';
    EntitySetName = 'vendors';
    SourceTable = Vendor;
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
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2';
                }
                field(city; Rec.City)
                {
                    Caption = 'City';
                }
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                }
                field(countryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code';
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                field(email; Rec."E-Mail")
                {
                    Caption = 'Email';
                }
                field(genBusPostingGroup; Rec."Gen. Bus. Posting Group")
                {
                    Caption = 'Gen. Bus. Posting Group';
                }
                field(vatBusPostingGroup; Rec."VAT Bus. Posting Group")
                {
                    Caption = 'VAT Bus. Posting Group';
                }
                field(vendorPostingGroup; Rec."Vendor Posting Group")
                {
                    Caption = 'Vendor Posting Group';
                }
                field(vatRegistrationNo; Rec."VAT Registration No.")
                {
                    Caption = 'VAT Registration No.';
                }
                field(paymentTermsCode; Rec."Payment Terms Code")
                {
                    Caption = 'Payment Terms Code';
                }
            }
        }
    }
}
