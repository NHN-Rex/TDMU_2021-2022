var index = 1;
changimage=function(){
    var imgarr = ["./resource/img/HOME/1.png", "./resource/img/HOME/2.png", "./resource/img/HOME/3.png"];
    document.getElementById('img_sub_banner').src = imgarr[index];
    index++;
    if(index == 3) index = 0;
}
setInterval(changimage, 2000);

var index1 = 1;
changimage1=function(){
    var imgarr1 = ["./resource/img/HOME/baner1.png", "./resource/img/HOME/baner2.png", "./resource/img/HOME/baner3.png",];
    document.getElementById('img_banner').src = imgarr1[index1];
    index1++;
    if(index1 == 3) index1 = 0;
}
setInterval(changimage1, 2500);
