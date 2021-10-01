page 50100 "PO Staging API.BPAC"
{
    PageType = API;
    Caption = 'poStaging';

    APIVersion = 'v1.0';
    APIPublisher = 'SVIR';
    APIGroup = 'poStagingGroup';

    EntityCaption = 'poStag';
    EntitySetCaption = 'poStags';
    EntityName = 'poStag';
    EntitySetName = 'poStags';

    ODataKeyFields = "Id";
    SourceTable = "PO Staging.BPAC";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec.Id) { ApplicationArea = All; Caption = 'Id'; }
                field(entryNo; Rec."Entry No.BPAC") { ApplicationArea = All; Caption = 'entryNo'; }
                field(soNumber; Rec."SO Number.BPAC") { ApplicationArea = All; Caption = 'soNumber'; }
                field(shipToFacility; Rec."Ship-To Facility.BPAC") { ApplicationArea = All; ; Caption = 'shipToFacility'; }

                field(receiveDate; Rec."Receive Date.BPAC") { ApplicationArea = All; Caption = 'receiveDate'; }

                field(productCode; Rec."Product Code.BPAC") { ApplicationArea = All; Caption = 'productCode'; }

                field(uom; Rec."Unit of Measure.BPAC") { ApplicationArea = All; Caption = 'unitOfMeasure'; }
                field(quantity; Rec."Quantity.BPAC") { ApplicationArea = All; Caption = 'Quantity'; }
                field(unitWeight; Rec."Unit Weight.BPAC") { ApplicationArea = All; Caption = 'Unit Weight'; }
                field(unitPrice; Rec."Unit Price.BPAC") { ApplicationArea = All; Caption = 'Unit Price'; }
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        // Because API doesn't run the table trigger only the page trigger
        Rec.Insert(true);
        Rec.Modify(true);
        exit(false);
    end;
}