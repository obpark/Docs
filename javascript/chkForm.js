function chkForm() {
    var rtnval = true;
    $(":input").each(function(){
        //console.log( $(this).attr("type")+":"+$(this).attr("name") );
        if (!$(this).hasClass("require")) return true;

        var name = $(this).attr("name");
        if ($(this).is("textarea")) {
            if ($(this).val() == "") {
                alert("질문을 입력하여 주십시오.");
                this.focus();
                rtnval = false;
                return false;
            }
        }
        if ($(this).is("select")) {
        }
        if ($(this).attr("type") == "text") {
            if (!$("input[name='"+name+"']").val()) {
                alert("질문을 입력하여 주십시오.");
                this.focus();
                rtnval = false;
                return false;
            }
        }
        if ($(this).attr("type") == "radio") {
            if (!$("input[name='"+name+"']:checked").val()) {
                alert("질문을 선택하여 주십시오.");
                this.focus();
                rtnval = false;
                return false;
            }
        }
    });
    //console.log("r=>"+rtnval);
    return rtnval;
}
