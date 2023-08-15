pageextension 50500 "Customer Card JS" extends "Customer Card"
{
    layout
    {
        //This is how you add the javascript workbench in your page
        addfirst(content)
        {
            part(WB; Workbench)
            {
                ApplicationArea = all;
            }
        }
    }
}
