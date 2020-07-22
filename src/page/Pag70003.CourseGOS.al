page 70003 "Course GOS"
{

    ApplicationArea = All;
    Caption = 'Courses';
    PageType = List;
    SourceTable = "Course GOS";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field("Major Code"; "Major Code")
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

                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Search Terms"; "Search Terms")
                {
                    ApplicationArea = All;
                }
                field(Duration; Duration)
                {
                    ApplicationArea = All;
                }
                field(Department; Department)
                {
                    ApplicationArea = All;
                }
                field("Credits Available"; "Credits Available")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

}
