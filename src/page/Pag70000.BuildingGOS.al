page 70000 "Building GOS"
{

    ApplicationArea = All;
    Caption = 'Buildings';
    PageType = List;
    SourceTable = "Building GOS";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Building Card";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {

                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                }

                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("No.of Rooms"; "No.of Rooms")
                {
                    ApplicationArea = All;
                }
                field("GPS Coodinates"; "GPS Coodinates")
                {
                    ApplicationArea = All;
                }
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
