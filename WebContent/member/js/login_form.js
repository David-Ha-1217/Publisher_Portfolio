function login_agree() {
	var theForm = document.btnWrap;
 	theForm.method = "POST";
    theForm.action = "publisher.gd?type=agreeForm";
    
    theForm.submit();
}
    
