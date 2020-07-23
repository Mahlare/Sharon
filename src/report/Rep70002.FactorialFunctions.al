report 70002 "Factorial Functions"
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = True;


    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(Input; Input)
                    {
                        ApplicationArea = All;
                        Caption = 'Input';
                        ToolTip = 'Please enter a positive number.';

                    }
                }
            }
        }


    }

    trigger OnPreReport()
    begin
        Message('%1! =  %2', Input, Factorial(Input));
    end;

    var
        Input: Integer;

    procedure Factorial(n: Integer): Integer
    begin
        if n > 10 then
            Error('The number must not be greater than 10');
        if n <= 1 then
            exit(1)
        else
            exit(n * Factorial(n - 1));
    end;
}
// 5!= 5*4*3*2*1
// 4!= 4*3*2*1
// 3!=3*2*1
//2!=2*1
// 1!=1