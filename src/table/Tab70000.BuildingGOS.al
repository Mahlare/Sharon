//Tables serve both to define the data structure and to contain the data records.

table 70000 "Building GOS"      // A building is located at a location and contains 1 or many rooms
{
    Caption = 'Building';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            TableRelation = Location;   //foreign key to link the building (campus) table to the location 
        }
        field(2; "Code"; Code[20])      //building code which is the primary key of this table
        {
            Caption = 'Code';

        }
        field(3; "Name"; Text[50])
        {
            Caption = 'Name';
        }

        field(4; "Type"; Enum "Building Types")
        {
            Caption = 'Type';       // Might need to create a subtable instead of an enum
        }
        field(5; "GPS Coodinates"; Code[20])
        {
            Caption = 'GPS Coodinates';         //Looking to an online map (Check article on how to implement locations in AL on MS Docs)
                                                //Still doing research!!
        }
        field(6; "No.of Rooms"; Integer)
        {
            FieldClass = FlowField;
            Editable = false;
            Caption = 'No. of Rooms';

            //Count no of rooms in each building
            CalcFormula = count ("Room GOS" where("Building Code" = field(Code), "Location Code" = field("Location Code")));

        }
        //for reporting purposes
        field(7; "Processed"; Boolean)
        {
            Caption = 'Processed';
        }

    }
    keys        //specifies that the primary key of this table is a compound of 2 tables
    {
        key(key1; "Location Code", "Code")
        {
            Clustered = true;
        }
    }
}