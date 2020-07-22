page 70002 "Major GOS"
{
    Editable = false;
    ApplicationArea = All;
    Caption = 'Majors';
    PageType = List;
    SourceTable = "Major GOS";
    UsageCategory = Lists;
    CardPageId = "Major Card";              //links list page to card page

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                }

                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Duration; Duration)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
