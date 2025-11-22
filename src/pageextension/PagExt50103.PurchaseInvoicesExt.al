pageextension 50103 "Purchase Invoices Ext" extends "Purchase Invoices"
{
    layout
    {
        addlast(Control1)
        {
            field("Link fattura"; Rec."Link fattura")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the link to the invoice PDF in SharePoint.';
            }
        }
    }
}
