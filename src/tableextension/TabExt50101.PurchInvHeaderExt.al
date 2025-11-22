tableextension 50101 "Purch. Inv. Header Ext" extends "Purch. Inv. Header"
{
    fields
    {
        field(50100; "Link fattura"; Text[2048])
        {
            Caption = 'Link fattura';
            DataClassification = CustomerContent;
            ExtendedDatatype = URL;
        }
    }
}
