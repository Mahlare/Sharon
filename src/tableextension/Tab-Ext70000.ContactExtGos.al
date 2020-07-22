tableextension 70000 "Contact Ext. Gos" extends Contact
{
    fields
    {
        field(70000; "Tree Sort Order GOS"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Tree Sort Order';
        }
        field(70001; "Tree Level GOS"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Tree Level';
        }
    }

    keys
    {
        key(GOS; "Tree Sort Order GOS")
        {

        }
    }

}