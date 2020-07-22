table 70002 "Major GOS"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }

        field(2; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Duration"; Option)
        {
            Caption = 'Duration';
            OptionCaption = ', 3 Months, 6 Months, 1 Year, 2 Years, 3 Years, 4 Years, 5 Years, 6 Years, 7 Years';
            OptionMembers = " ","3 Months","6 Months","1 Year","2 Years","3 Years","4 Years","5 Years","6 Years","7 Years";
            Editable = true;
        }
    }
}
