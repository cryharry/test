/**
 * Created by admin on 2014-06-29.
 */
function writeSave() {

    if(document.writeform.writer.value == "") {
        alert("작성자를 입력하십시오.");
        document.writeform.writer.focus();
        return false;
    }

    if(document.writeform.subject.value == "") {
        alert("제목을 입력하십시오.");
        document.writeform.subject.focus();
        return false;
    }

    if(document.writeform.content.value == "") {
        alert("내용을 입력하십시오.");
        document.writeform.content.focus();
        return false;
    }

    if(document.writeform.passwd.value == "") {
        alert("비밀번호를 입력하십시오.");
        document.writeform.passwd.focus();
        return false;
    }
}