page 50101 "PO Staging.BPAC"
{

    ApplicationArea = All;
    Caption = 'PO Staging List';
    PageType = List;
    SourceTable = "PO Staging.BPAC";
    UsageCategory = Lists;
    InsertAllowed = false;
    PromotedActionCategories = 'New,Process,Report,Visits';
    RefreshOnActivate = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No.BPAC"; Rec."Entry No.BPAC")
                {
                    ToolTip = 'Specifies the value of the Entry No. field';
                    ApplicationArea = All;
                }
                field("Product Code.BPAC"; Rec."Product Code.BPAC")
                {
                    ToolTip = 'Specifies the value of the Product Code field';
                    ApplicationArea = All;
                }
                field("Quantity.BPAC"; Rec."Quantity.BPAC")
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field("Receive Date.BPAC"; Rec."Receive Date.BPAC")
                {
                    ToolTip = 'Specifies the value of the Receive Date field';
                    ApplicationArea = All;
                }
                field("SO Number.BPAC"; Rec."SO Number.BPAC")
                {
                    ToolTip = 'Specifies the value of the SO Number field';
                    ApplicationArea = All;
                }
                field("Ship-To Facility.BPAC"; Rec."Ship-To Facility.BPAC")
                {
                    ToolTip = 'Specifies the value of the Ship-To Facility field';
                    ApplicationArea = All;
                }
                field("Status.BPAC"; Rec."Status.BPAC")
                {
                    ToolTip = 'Specifies the value of the Status field';
                    ApplicationArea = All;
                }
                field("Unit Price.BPAC"; Rec."Unit Price.BPAC")
                {
                    ToolTip = 'Specifies the value of the Unit Price field';
                    ApplicationArea = All;
                }
                field("Unit Weight.BPAC"; Rec."Unit Weight.BPAC")
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field("Unit of Measure.BPAC"; Rec."Unit of Measure.BPAC")
                {
                    ToolTip = 'Specifies the value of the Unit of Measure field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
