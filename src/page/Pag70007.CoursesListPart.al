page 70007 "Courses List Part"
{
    Caption = 'Courses';
    PageType = ListPart;
    SourceTable = "Course GOS";
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
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Search Terms"; "Search Terms")
                {
                    ApplicationArea = All;
                }
                field(Department; Department)
                {
                    ApplicationArea = All;
                }
                field(Duration; Duration)
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
    actions
    {
        area(Processing)
        {
            action("Modules")
            {
                ApplicationArea = all;
                Caption = 'Modules';
                Image = LedgerBook;
                RunObject = Page "Module GOS";
                RunPageLink = "Course Code" = field(Code), "Major Code" = field("Major Code");     //the modules that pop up have to be related to the course
                RunPageMode = View;

            }
        }

    }

}
