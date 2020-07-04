
<%
function commaTrim(str,trimstr)
    while trim(left(str,1))=trimstr
        str=trim(right(str,Len(str)-1))
    wend
    while trim(right(str,1))=trimstr
        str=trim(Left(str,Len(str)-1))
    wend
    commaTrim=str
end function

Mystring = ",3,2,5,6,1,65,22,,,"
Response.write commaTrim(Mystring,",")

%>
