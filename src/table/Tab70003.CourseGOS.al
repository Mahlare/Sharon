table 70003 "Course GOS"            //A course is connected to a major and a number of modules
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Major Code"; Code[20])        //foreign key to the major table
        {
            Caption = 'Major Code';
            TableRelation = "Major GOS";
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }

        field(3; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(4; "Description"; Text[100])
        {
            Caption = 'Description';
        }
        field(5; "Search Terms"; Text[50])
        {
            Caption = 'Search Terms';
        }
        field(6; "Credits Available"; Integer)
        {
            Caption = 'Credits Available';
        }
        field(7; "Duration"; Option)
        {
            Caption = 'Duration';

            OptionCaption = ', 4 Weeks, 1 Semester, 1 Year';
            OptionMembers = " ","4 Weeks","6 Months","1 Year";
            Editable = true;
        }
        field(8; "Department"; Code[20])
        {
            Caption = 'Department';         //to be linked to a department table that still needs to be created
        }

    }
    keys        //specifies that the primary key of this table is a compound of 2 tables
    {
        key(key1; "Major Code", "Code")
        {
            Clustered = true;
        }
    }

}

