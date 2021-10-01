permissionset 50100 "PO Stag.BPAC"
{
    Assignable = true;
    Caption = 'PO Stag BPAC';
    Permissions =
        tabledata "PO Staging.BPAC" = RIMD;
}