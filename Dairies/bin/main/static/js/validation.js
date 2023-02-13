function validation() {
	
    // 유효성 검사 변수
    var idJ = /^[a-zA-Z0-9]{4,12}$/;
    //최소 10 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자
    //var pwJ = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{10,20}$/;
    var pwJ = /^[a-zA-Z0-9]{4,12}$/;
    var emailJ = /^([\w\.\_\-])*[a-zA-Z0-9]+([\w\.\_\-])*([a-zA-Z0-9])+([\w\.\_\-])$/i;
	// 네임 변수 처리
    var id = document.member.id.value;
    var pw = document.member.pw.value;
    var pw2 = document.member.pw2.value;
    var email = document.member.email.value;
    var email3 = document.member.email3.value;

    // 유효성 검사 
    var member = document.member;
    if (!idJ.test(id)){
        alert("아이디 영문 또는 숫자 4~12자리로 입력해주세요.");
        member.id.value="";
        member.id.focus();
        return false;
    }
    if (!pwJ.test(pw)){
        alert("비밀번호를 입력해 주세요. (비밀번호를 입력해 주세요.(10~20자리)(문자, 숫자, 특수문자 혼용)");
        member.pw.value="";
        member.pw.focus();
        return false;
    }
    if (pw2!=pw){
        alert("비밀번호가 다릅니다.");
        member.pw2.value="";
        member.pw2.focus();
        return false;
    }
    if (!emailJ.test(email)){
        alert("이메일을 형식에 맞게 입력하세요")
        member.email.value="";
        member.email.focus();
        return false;
    }
    if (email3==""){
        alert("이메일계정을 선택해주세요.")
        member.email2.focus();
        return false;
    }
  	
    var check = document.getElementsByName("checkyes");
    for(var i=0; i < 3; i++) {
        if(!check[i].checked) {
			alert("약관에 동의해주세요.");
        	return false;       
        }
    }
    
    member.submit();
}

