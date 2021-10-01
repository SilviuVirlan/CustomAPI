table 50100 "PO Staging.BPAC"
{
    DataClassification = CustomerContent;
    Caption = 'PO Staging';

    fields
    {
        field(1; "Entry No.BPAC"; Biginteger)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
            Editable = false;
            AutoIncrement = true;
        }
        field(2; "SO Number.BPAC"; Code[20]) { DataClassification = SystemMetadata; Caption = 'SO Number'; }
        field(3; "Ship-To Facility.BPAC"; Code[20]) { DataClassification = SystemMetadata; Caption = 'Ship-To Facility'; }
        field(4; "Receive Date.BPAC"; Code[20]) { DataClassification = SystemMetadata; Caption = 'Receive Date'; }
        field(5; "Product Code.BPAC"; Code[20]) { DataClassification = SystemMetadata; Caption = 'Product Code'; }
        field(6; "Unit of Measure.BPAC"; Code[20]) { DataClassification = SystemMetadata; Caption = 'Unit of Measure'; }
        field(7; "Quantity.BPAC"; Decimal) { DataClassification = SystemMetadata; Caption = 'Quantity'; }
        field(8; "Unit Weight.BPAC"; Decimal) { DataClassification = SystemMetadata; Caption = 'Quantity'; }
        field(9; "Unit Price.BPAC"; Decimal) { DataClassification = SystemMetadata; Caption = 'Unit Price'; }
        field(10; "Status.BPAC"; Enum "Process Status.BPAC") { DataClassification = SystemMetadata; Caption = 'Status'; }
        field(11; "Date-Time Imported.BPAC"; DateTime) { DataClassification = SystemMetadata; Caption = 'Status'; }
        field(100; Id; Guid) { DataClassification = SystemMetadata; Caption = 'Id'; }
    }

    keys
    {
        key(PK; "Entry No.BPAC") { Clustered = true; }
        key(Status; "Status.BPAC", "SO Number.BPAC") { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "Date-Time Imported.BPAC" := CurrentDateTime();
        Id := CreateGuid();
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}