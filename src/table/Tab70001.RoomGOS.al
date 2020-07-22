table 70001 "Room GOS"
{
    Caption = 'Room';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            TableRelation = Location;   //foreign key to link the building (campus) table to the location table
        }
        field(2; "Building Code"; Code[20])      //foreign key to link the room table to the location table and the building table
        {
            Caption = 'Building Code';
            TableRelation = "Building GOS".Code where("Location Code" = field("Location Code")); //Filter the building based on the location

        }
        field(3; "Code"; Code[20])      //primary key for this table
        {
            Caption = 'Code';
        }
        field(4; "Floor"; Option)
        {
            Caption = 'Floor';
            OptionCaption = ', Ground, First, Second, Third';
            OptionMembers = " ",Ground,First,Second,Third;
            Editable = true;
        }

        field(5; "Type"; Enum "Room Types")
        {
            Caption = 'Type';       // Might need to create a subtable instead of an enum
        }
        field(6; "Capacity"; Integer)
        {
            Caption = 'Capacity';         //number of people allowed
        }
        field(7; "Processed"; Boolean)
        {
            Caption = 'Processed';
        }

    }
    keys        //specifies that the primary key of this table is a compound of 3 tables
    {
        key(key1; "Location Code", "Building Code", "Code")
        {
            Clustered = true;
        }
    }
}