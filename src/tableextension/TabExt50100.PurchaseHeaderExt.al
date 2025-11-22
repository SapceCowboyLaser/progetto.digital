tableextension 50100 "Purchase Header Ext" extends "Purchase Header"
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
