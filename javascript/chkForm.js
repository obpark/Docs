function chkForm() {
    var rtnval = true;
    $(":input").each(function(){
        //console.log( $(this).attr("type")+":"+$(this).attr("name")+":"+$(this).val()+":" );
        if (!$(this).hasClass("require")) return true;

        var id = $(this).attr("id");
        if ($(this).is("textarea")) {
            if ($(this).val() == "") {
                alert("필수값을 입력하여 주십시오.");
                this.focus();
                rtnval = false;
                return false;
            }
        }
        if ($(this).is("select")) {
        }
        if ($(this).attr("type") == "text") {
            if (!$(this).val() || $(this).val().trim() == "") {
                alert("필수값을 입력하여 주십시오.");
                this.focus();
                rtnval = false;
                return false;
            }
        }
        if ($(this).attr("type") == "radio") {
            if (!$("#"+id+":checked").val()) {
                alert("필수값을 선택하여 주십시오.");
                this.focus();
                rtnval = false;
                return false;
            }
        }
    });
    //console.log("r=>"+rtnval);
    return rtnval;
}
