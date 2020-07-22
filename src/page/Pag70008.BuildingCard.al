page 70008 "Building Card"
{

    Caption = 'Building Card';
    PageType = Card;
    SourceTable = "Building GOS";

    layout
    {
        area(content)
        {
            group(General)
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
                field(Processed; Processed)
                {
                    ApplicationArea = All;
                }
                field("GPS Coodinates"; "GPS Coodinates")
                {
                    ApplicationArea = All;
                }
            }
            part("Rooms List Part"; "Rooms List Part")
            {
                ApplicationArea = All;
                SubPageLink = "Location Code" = field("Location Code"), "Building Code" = field(Code);
            }
        }
    }

}
