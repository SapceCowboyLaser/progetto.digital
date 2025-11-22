pageextension 50102 "Posted Purchase Invoice Ext" extends "Posted Purchase Invoice"
{
    layout
    {
        addlast(General)
        {
            field("Link fattura"; Rec."Link fattura")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the link to the invoice PDF in SharePoint.';
                Editable = false;
            }
        }
    }
}
