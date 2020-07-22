report 70001 "Sales Document"
{
    Caption = 'Sales Document';
    UsageCategory = Documents;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\Layouts\SalesDocument.rdlc';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "Document Type", "No.", "Sell-to Customer No.", "Document Date";
            column(Document_Type; "Document Type") { }
            column(Document_Type_Caption; FieldCaption("Document Type")) { }

            column(No_SalesHeader; "No.") { }
            column(No_SalesHeader_Caption; FieldCaption("No.")) { }
            column(titleLabel; StrSubstNo(titleLabel, "No.")) { }

            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }
            column(Sell_to_Customer_No_Caption; customerNuLabel) { }

            column(Sell_to_Customer_Name_; "Sell-to Customer Name") { }
            column(Sell_to_Customer_Name_Caption; customerNameLabel) { }

            column(Document_Date; Format("Document Date", 0, 4)) { }
            column(Document_Date_Caption; FieldCaption("Document Date")) { }

            column(Posting_Date; Format("Posting Date", 0, 4)) { }

            column(Posting_Date_Caption; FieldCaption("Posting Date")) { }

            dataitem("SalesLines"; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");

                column(LineNo_SalesLine; "Line No.") { }

                column(Type_SalesLine; "Type") { }
                column(Type_SalesLine_Caption; FieldCaption("Type")) { }
                column(No_SalesLine; "No.") { }
                column(No_SalesLine_Caption; FieldCaption("No.")) { }
                column(Description_SalesLine; "Description") { }
                column(Description_SalesLine_Caption; FieldCaption("Description")) { }
                column(Qty_SalesLine; Quantity) { }
                column(Qty_SalesLine_Caption; QuantityLabel) { }
                column(UOM_SalesLine; "Unit of Measure") { }
                column(UOM_SalesLine_Caption; UOMLabel) { }

                column(Line_Amount_SalesLine; "Line Amount") { }
                column(Line_Amount_SalesLine_Caption; FieldCaption("Line Amount")) { }
            }
        }
    }
    var
        titleLabel: Label 'Order Confirmation %1';
        customerNameLabel: Label 'Customer Name';
        customerNuLabel: Label 'Customer No.';
        QuantityLabel: Label 'QTY';
        UOMLabel: Label 'UOM';

    trigger OnPreReport()
    begin
        if "Sales Header".Count = 0 then
            Error('Nothing to do!!!');
    end;

}