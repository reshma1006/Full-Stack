function validate(){
    var mob=document.getElementById("txtMobile").nodeValue;
    var user=document.getElementById("txtUsername").nodeValue;
    var eamil=document.getElementById("txtEamilID").nodeValue;
    var m=/^[6-9][0-9]$|^[0][6-9]{0-9}{9}$|^[+][9][1][6-9][0-9]{9}$/;
    var e=/^[a-zA-Z0-9._-]{6,12}[@][1-z]{3,15}{.}[a-z]{2,6}$/;
    if(mob==''|| user==''|| email==''){
        window.alert('Please enter all the fields');
        return false;
    }
    else{
        if(m.test(mob)&&e.test(email){
            window.alert("Valid");
            return true;
        }
        else{
            window.alert("Invalid");
            return false;
        }
    }
}