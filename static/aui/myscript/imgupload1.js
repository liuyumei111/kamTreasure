/**
 * Created by Administrator on 2017/6/23.
 */
<!--添加图片控制-->
function imgChange(obj1, obj2) {
    //获取点击的文本框
    var file = document.getElementById("file");
    //存放图片的父级元素
    var imgContainer = document.getElementsByClassName(obj1)[0];
    //获取的图片文件
    var fileList = file.files;
    //文本框的父级元素
    var input = document.getElementsByClassName(obj2)[0];
    var imgArr = [];
    //遍历获取到得图片文件
    for (var i = 0; i < fileList.length; i++) {
        var imgUrl = window.URL.createObjectURL(file.files[i]);
        imgArr.push(imgUrl);
        var img = document.createElement("img");
        img.setAttribute("src", imgArr[i]);
        var imgAdd = document.createElement("div");
        imgAdd.setAttribute("class", "z_addImg");
        imgAdd.appendChild(img);
        imgContainer.appendChild(imgAdd);
    };
    imgRemove();
};
function imgRemove() {
    var imgList = document.getElementsByClassName("z_addImg");
    var mask = document.getElementsByClassName("z_mask")[0];
    var cancel = document.getElementsByClassName("z_cancel")[0];
    var sure = document.getElementsByClassName("z_sure")[0];
    for (var j = 0; j < imgList.length; j++) {
        imgList[j].index = j;
        imgList[j].onclick = function() {
            var t = this;
            mask.style.display = "block";
            cancel.onclick = function() {
                mask.style.display = "none";
            };
            sure.onclick = function() {
                mask.style.display = "none";
                t.style.display = "none";
            };

        }
    };
};
<!--添加图片控制-->
function vidChange(obj1, obj2) {
    //获取点击的文本框
    var file = document.getElementById("video");
    //存放图片的父级元素
    var vidContainer = document.getElementsByClassName(obj1)[0];
    //获取的图片文件
    var fileList = file.files;
    //文本框的父级元素
    var input = document.getElementsByClassName(obj2)[0];
    //var vidArr = [];
    //遍历获取到得图片文件
    for (var i = 0; i < fileList.length; i++) {
        //var vidUrl = window.URL.createObjectURL(file.files[i]);
        //vidArr.push(vidUrl);
        var vid = document.createElement("img");
        vid.setAttribute("src", "../aui/image/video.jpg");
        var vidAdd = document.createElement("div");
        vidAdd.setAttribute("class", "z_addvid");
        vidAdd.appendChild(vid);
        vidContainer.appendChild(vidAdd);
    };
    vidRemove();
};
function vidRemove() {
    var vidList = document.getElementsByClassName("z_addvid");
    var mask = document.getElementsByClassName("z_mask")[0];
    var cancel = document.getElementsByClassName("z_cancel")[0];
    var sure = document.getElementsByClassName("z_sure")[0];
    for (var j = 0; j < vidList.length; j++) {
        vidList[j].index = j;
        vidList[j].onclick = function() {
            var t = this;
            mask.style.display = "block";
            cancel.onclick = function() {
                mask.style.display = "none";
            };
            sure.onclick = function() {
                mask.style.display = "none";
                t.style.display = "none";
            };

        }
    };
};