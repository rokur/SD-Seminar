report 123456701 SeminarRegParticipantList
{
    Caption='Seminar Reg.- Participant List';
    DefaultLayout=RDLC;
    RDLCLayout='./Layouts/SeminarRegParticipantList.rdl';
    UsageCategory=ReportsAndAnalysis;
    dataset
    {
        dataitem(SeminarRegistrationHeader;"CSD Seminar Reg. Header")
        {
            DataItemTableView=sorting("No.");
            RequestFilterFields="No.","Seminar No."; 

            column(No_;"No.")
            {
                IncludeCaption=true;
            }
            column(Seminar_No_;"Seminar No.")
            {
                IncludeCaption=true;
            }
            column(Seminar_Name;"Seminar Name")
            {
                IncludeCaption=true;
            }
            column(Starting_Date;"Starting Date")
            {
                IncludeCaption=true;
            }
            column(Duration;Duration)
            {
                IncludeCaption=true;
            }
            column(Instructor_Name;"Instructor Name")
            {
                IncludeCaption=true;
            }
            column(Room_Name;"Room Name")
            {
                IncludeCaption=true;
            }
            dataitem(SeminarRegistrationLine;"CSD Seminar Registration Line")
            {
                DataItemTableView=sorting("Document No.","Line No.");
                DataItemLink="Document No."=field("No.");

            }   
        }
        dataitem(SeminarRegistrationLine2;"CSD Seminar Registration Line")
        {
            dataitem("Company Information";"Company Information")
            {
            column(Company_Name;Name)
            {
            }
            }
        }        
    }
    
    labels
    {
        SeminarRegistrationHeaderCap ='Seminar Registration Header';
    }
}
