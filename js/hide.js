var flag = 0;

function hide() {
var text = document.getElementById("hideText");
var button = document.getElementById("hideButton");

if (flag == 0 ) {
    text.style.height = "auto";
    text.style.overflow = "inherit";
    flag = 1;
}
     else {
         text.style.height = "0px";
         text.style.overflow = "hidden";
         flag = 0;
    }
}
