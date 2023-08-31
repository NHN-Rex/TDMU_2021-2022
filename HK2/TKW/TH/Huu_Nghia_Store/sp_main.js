var index = 1;
changImage=function(){
    var imgarr = ["./resource/img/SP/banner/1.png", "./resource/img/SP/banner/2.png", "./resource/img/SP/banner/3.png"];
    document.getElementById('img_banner').src = imgarr[index];
    index++;
    if(index == 3) index = 0;
}
setInterval(changImage, 2000);