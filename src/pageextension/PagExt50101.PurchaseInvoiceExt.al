pageextension 50101 "Purchase Invoice Ext" extends "Purchase Invoice"
{
    layout
    {
        addlast(General)
        {
            field("Link fattura"; Rec."Link fattura")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the link to the invoice PDF in SharePoint.';
            }
        }
    }
}
