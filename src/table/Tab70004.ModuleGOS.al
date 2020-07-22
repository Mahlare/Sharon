table 70004 "Module GOS"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Major Code"; Code[20])
        {
            Caption = 'Major Code';
            TableRelation = "Major GOS";
        }
        field(2; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            //filter courses on major 
            TableRelation = "Course GOS".Code where("Major Code" = field("Major Code"));
        }
        field(3; "Code"; Code[20])
        {
            Caption = 'Code';
        }

        field(4; "Name"; Text[50])
        {
            Caption = 'Name';
        }

        field(5; "Description"; Text[100])
        {
            Caption = 'Description';
        }
        field(6; "Weighing"; Decimal)          //% of final mark
        {
            Caption = 'Weighing';
        }

    }
    keys        //specifies that the primary key of this table is a compound of 3 tables
    {
        key(key1; "Course Code", "Major Code", "Code")
        {
            Clustered = true;
        }
    }
}

