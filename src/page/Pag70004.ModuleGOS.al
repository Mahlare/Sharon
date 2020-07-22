page 70004 "Module GOS"
{

    ApplicationArea = All;
    Caption = 'Modules';
    PageType = List;
    SourceTable = "Module GOS";
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
                    //Visible = false;
                }
                field("Course Code"; "Course Code")
                {
                    ApplicationArea = All;
                    //visible = false;
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

                field(Weighing; Weighing)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
