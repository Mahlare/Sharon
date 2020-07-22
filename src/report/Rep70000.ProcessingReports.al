report 70000 "Processing Reports"
{
    Caption = 'Training Hall Report';
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        //Building data item
        dataitem("Building GOS"; "Building GOS")
        {
            RequestFilterFields = "Location Code", Code;

            //Room dataitem nested inside the Building data item
            dataitem("Room GOS"; "Room GOS")
            {
                //Link the room to the buildings via the Location and Building codes 
                DataItemLinkReference = "Building GOS";
                DataItemLink = "Location Code" = field("Location Code"), "Building Code" = field("Code");

                //Room data item triggers
                trigger OnPreDataItem()
                begin
                    //Used to set filters or reset counters and totaling fields
                end;

                trigger OnAfterGetRecord()
                begin
                    //process all the rooms in a particular building

                end;

                trigger OnPostDataItem()
                begin
                    //message when rooms are done processing
                end;

            }//end of room data item
             //Building data item triggers
            trigger OnPreDataItem()
            begin

            end;

            trigger OnAfterGetRecord()
            begin
                //Process a bulding after all the rooms in it have been processed  
            end;

            trigger OnPostDataItem()
            begin
                //output when a building has been processed
            end;
        }//end of building data item
    }//end of dataset

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(Processed; Processed)
                    {
                        Caption = 'Processed';

                    }
                }
            }
        }
    }

    //global variable that the user will set in the request page and will be used to set the value of the "Processed" Field.
    var
        Processed: Boolean;
}