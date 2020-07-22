page 70009 "Rooms List Part"
{

    Caption = 'Rooms';
    PageType = ListPart;
    SourceTable = "Room GOS";

    layout
    {
        area(content)
        {
            repeater(General)
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
