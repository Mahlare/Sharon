page 70006 "Major Card"
{

    Caption = 'Major Card';
    PageType = Card;
    SourceTable = "Major GOS";

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Duration; Duration)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
            }
            part("Courses List Part"; "Courses List Part")
            {
                ApplicationArea = All;
                SubPageLink = "Major Code" = field(Code);
            }
        }


    }

}
