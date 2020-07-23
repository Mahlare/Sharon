report 70003 "Fibonacci Series"
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
        Message('Fibonacci %1 = %2', Input, Fibonacci(Input));
    end;

    var
        Input: Integer;

    procedure Fibonacci(n: Integer): Integer
    begin
        if n > 25 then
            Error('The number must not be greater than 25');
        if n < 2 then
            exit(1)
        else
            exit(Fibonacci(n - 1) + Fibonacci(n - 2));
    end;
}
//0
//1 
//0+1 = 1
//2
//1+2 = 3 ...