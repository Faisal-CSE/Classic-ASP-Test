
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>


<%
temp = request.form("p")

response.write(temp)
response.write("<br>")

a=Split(temp,",")
for each x in a
    tp = request.form("n"&x)
    tp1 = request.form("k"&x)
    tp2 = request.form("l"&x)

    response.write(tp & " " & tp1 & " " & tp2)
    response.write("<br>")
next




%>




<form method="post" action="demo.asp" onsubmit="test()">
    <div class="class" id="1">sdfaasdf
            <input type="hidden" id="n1" name="n1" value="333">
            <input type="hidden" id="k1" name="k1" value="aaa">
            <input type="hidden" id="l1" name="l1" value="jhg">
    </div>
    <div class="class" id="2">asdfasd
            <input type="hidden" id="n2" name="n2" value="222">
            <input type="hidden" id="k2" name="k2" value="bbb">
            <input type="hidden" id="l2" name="l2" value="def">
    </div>
    <div class="class" id="3">fsadfas
            <input type="hidden" id="n3" name="n3" value="111">
            <input type="hidden" id="k3" name="k3" value="ccc">
            <input type="hidden" id="l3" name="l3" value="sdf">
    </div>

    <input type="hidden" id="p" name="p">
    <input type="submit" value="Submit"/>
</form>


<script>
    function test(){
        var ids = $('.class').map(function() {
            return this.id;
        }).get();
        document.getElementById('p').value = ids;
    }
          
</script>
