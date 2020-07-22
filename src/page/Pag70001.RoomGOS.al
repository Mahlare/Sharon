page 70001 "Room GOS"
{

    ApplicationArea = All;
    Caption = 'Rooms';
    PageType = List;
    SourceTable = "Room GOS";
    UsageCategory = Lists;

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
                field("Building Code"; "Building Code")
                {
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field(Floor; Floor)
                {
                    ApplicationArea = All;
                }
                field(Capacity; Capacity)
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
