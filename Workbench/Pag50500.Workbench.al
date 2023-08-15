page 50500 Workbench
{
    PageType = CardPart;
    layout
    {
        area(Content)
        {
            field(Code; CodeTxt)
            {
                Caption = 'Code';
                ShowCaption = false;
                ApplicationArea = all;
                MultiLine = true;
                Editable = true;
                trigger OnValidate()
                begin
                    GlobalErrorTxt := '';
                    CurrPage.JS.Execute(CodeTxt);
                end;
            }
            field(Error; GlobalErrorTxt)
            {
                Caption = 'Message Area';
                ShowCaption = false;
                ApplicationArea = all;
                Editable = false;
                MultiLine = true;
            }
            usercontrol(JS; Workbench)
            {
                ApplicationArea = all;
                trigger Error(ErrorTxt: Text)
                begin
                    GlobalErrorTxt := ErrorTxt;
                end;

                trigger ControlReady()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    begin

    end;

    var
        CodeTxt: Text;
        GlobalErrorTxt: Text;
}
