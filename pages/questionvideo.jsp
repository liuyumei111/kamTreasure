<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jsp"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
<meta name="format-detection"
	content="telephone=no,email=no,date=no,address=no">
<title>热门榜</title>
<link rel="stylesheet" type="text/css" href="${path}/static/aui/css/aui.css" />
<link rel="stylesheet" type="text/css" href="${path}/static/aui/mycss/aui.css" />
<style type="text/css">
    .user-info {
        background-color: #ffffff;
        padding: 0.75rem 0;
    }
    img.avatar {
        display: block;
        margin: 0 auto;
        width: 20%;
    }
    .aui-list .aui-list-header {
        background-color: #ffffff;
        line-height: 1.2rem;
    }
    .aui-list .aui-list-item {
        background-color: #f8f6ef;
    }
     .aui-bar-tab-item>.bar-tab-label-wen{
        /*width: 3em;*/
        height: 2rem;
        background: #931a02;
        border-radius: 0.3rem;
        text-align: center;
        line-height: 2rem;
        color: #fff;
        font-size: 22px;
    }
.tuijian{
    width: 1.5rem;
    height: 1.5rem;
    margin-left: 1rem;
    background: url("${path}/static/aui/myimages/icon-question.png")no-repeat;
    background-size: cover;
}
.xuanshagn{
    width: 1.5rem;
    height: 1.5rem;
    margin-left: 1rem;
    background: url("${path}/static/aui/myimages/icon-offer.png")no-repeat;
    background-size: cover;
}
.zhuanjia{
    width: 1.5rem;
    height: 1.5rem;
    margin-left: 1rem;
    background: url("${path}/static/aui/myimages/icon-expert.png")no-repeat;
    background-size: cover;
}
.wode{
    width: 1.5rem;
    height: 1.5rem;
    margin-left: 1rem;
    background: url("${path}/static/aui/myimages/icon-member.png")no-repeat;
    background-size: cover;
}
    .box {
        width: 100%;
        padding: 0.6rem;
        background: #f7f7f7;  /*重置搜索框样式*/
        margin-bottom: 2rem;
    }
select{
    width: 4rem;
    padding-left: 0.5rem;
    font-size: 14px;
    color: #bdbdbd;
    /*position: relative;*/
    /*z-index:5;*/
}
.margin-no{
    margin: 0;
    padding: 0;
}
.position1{
    position: relative;
    top: 0.1px;
    left: -1.1rem;
    pointer-events:none;
}

    img{
        width: 100%;
        height: 100%;
    }
    .video-content,.aui-col-xs-4{
          height: 4rem;
          width: 30%;
        position: relative;
      }
.cover{
    position: absolute;
    top:0;
    left: 0;
    background:#000;
    width:100%;
    height:100%;
    padding:5px;
    color:#F00;
    filter:alpha(Opacity=40);
    -moz-opacity:0.4;opacity: 0.4
}
.cover>b{
    position: absolute;
    top:28%;
    left: 40%;
    margin: 0 auto;
    display: block;
    width: 1.5rem;
    height: 1.5rem;
    background: rosybrown;
    text-align: center;
    line-height: 2rem;
    background: url("${path}/static/aui/myimages/3.png");
    background-size: contain;
}
.video-box{
    position: relative;
}
    .video-display{
        width: 100%;
        margin: 0 auto;
        position: absolute;
        top: 1.5rem;
        left: 0;
    }
    .video-ele{
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
    }
</style>
</head>
<body>
	<div class="aui-content box" id="pagefirst">
        <!--搜索-->
	  <div class="aui-searchbar" id="first-search">
          <select name="">
              <option value="0">搜问题</option>
              <option value="1">搜专家</option>
          </select>
          <i class="aui-iconfont aui-icon-down position1"></i>

          <div class="aui-searchbar-input aui-border-radius margin-no">
              <input type="search" placeholder="请输入搜索的问题" id="search-input">
			   <div class="aui-searchbar-clear-btn">
				     <i class="aui-iconfont aui-icon-close"></i>
			  </div>
		  </div>
		<div class="aui-searchbar-btn" tapmode>取消</div>
	</div>
        <!--详情-->
        <div class="aui-card-list">
            <div class="aui-card-list-header aui-card-list-user">
                <div class="aui-card-list-user-avatar">
                    <img src="${path}/static/aui/myimages/user-icon2.png" style="width:2rem" class="aui-img-round">
                </div>
                <div class="aui-card-list-user-name">
                    <div class="aui-text-info"><span>晓东</span></div>
                    <div class="aui-font-size-14 text-light">赏金￥<span>30</span></div>
                </div>
                <div class="aui-card-list-user-info text-light">瓷器收藏爱好者</div>
            </div>
            <div class="aui-card-list aui-border-t">
                <div class="aui-card-list-content video-box">
                    <div class="aui-row aui-row-padded">
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                    </div>
                    <div class="aui-row aui-row-padded">
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                    </div>
                    <div class="aui-row aui-row-padded">
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <!--视频div-->
                        <div class="aui-col-xs-4 video-content">
                            <video class="video-ele">
                                <source src="${path}/static/aui/myimages/22.mp4" type="video/mp4"/>
                                <source src="${path}/static/aui/myimages/22.mp4" type="video/webM"/>
                                <source src="${path}/static/aui/myimages/22.mp4" type="video/ogg"/>
                            </video>
                            <!--遮罩层-->
                            <!--<div class="cover">-->
                            <!--<b  onclick="isPlay(this)"></b>-->
                            <!--</div>-->
                        </div>
                    </div>
                    <div class="aui-card-list-content-padded aui-padded-b-5" style="padding-left: 1.5rem">
                        真假？年代
                    </div>
                </div>
                <div class="item-user">
                    <div class="aui-card-list-header aui-card-list-user">
                        <div class="aui-card-list-user-avatar">
                            <img src="${path}/static/aui/myimages/user-icon2.png" style="width:2rem" class="aui-img-round">
                        </div>
                        <div class="aui-card-list-user-name">
                            <div class="aui-text-info"><span class="voice">10元学习<i></i></span></div>
                            <div class="aui-font-size-14 text-light"><span>12人查看</span></div>
                        </div>
                        <div class="aui-card-list-user-info text-light"><span>王云涛|控轩阁主人|中藏协会员，在读博...</span></div>
                    </div>
                </div>
            </div>
        </div>
        <!--详情-->
        <div class="aui-card-list">
            <div class="aui-card-list-header aui-card-list-user">
                <div class="aui-card-list-user-avatar">
                    <img src="${path}/static/aui/myimages/user-icon2.png" style="width:2rem" class="aui-img-round">
                </div>
                <div class="aui-card-list-user-name">
                    <div class="aui-text-info"><span>晓东</span></div>
                    <div class="aui-font-size-14 text-light">赏金￥<span>30</span></div>
                </div>
                <div class="aui-card-list-user-info text-light">瓷器收藏爱好者</div>
            </div>
            <div class="aui-card-list aui-border-t">
                <div class="aui-card-list-content video-box">
                    <div class="aui-row aui-row-padded">
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                    </div>
                    <div class="aui-row aui-row-padded">
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                    </div>
                    <div class="aui-row aui-row-padded">
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <div class="aui-col-xs-4">
                            <img src="${path}/static/aui/myimages/product.png">
                        </div>
                        <!--视频div-->
                        <div class="aui-col-xs-4 video-content">
                            <video  id="video" width="100%" height="100%"style="background: #fff">
                                <source src="${path}/static/aui/myimages/22.mp4" type="video/mp4"/>
                                <source src="${path}/static/aui/myimages/22.mp4" type="video/webM"/>
                                <source src="${path}/static/aui/myimages/22.mp4" type="video/ogg"/>
                            </video>
                            <!--遮罩层-->
                            <!--<div class="cover">-->
                            <!--<b  onclick="isPlay(this)"></b>-->
                            <!--</div>-->
                        </div>
                    </div>
                    <div class="aui-card-list-content-padded aui-padded-b-5" style="padding-left: 1.5rem">
                        真假？年代
                    </div>
                </div>
                <div class="item-user">
                    <div class="aui-card-list-header aui-card-list-user">
                        <div class="aui-card-list-user-avatar">
                            <img src="${path}/static/aui/myimages/user-icon2.png" style="width:2rem" class="aui-img-round">
                        </div>
                        <div class="aui-card-list-user-name">
                            <div class="aui-text-info"><span class="voice">10元学习<i></i></span></div>
                            <div class="aui-font-size-14 text-light"><span>12人查看</span></div>
                        </div>
                        <div class="aui-card-list-user-info text-light"><span>王云涛|控轩阁主人|中藏协会员，在读博...</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<footer class="aui-bar aui-bar-tab" id="footer">
		<div class="aui-bar-tab-item aui-active" tapmode>
            <!--<img class="tuijian" src="${path}/static/aui/myimages/icon-question.png"/>-->
            <div class="icon tuijian"></div>
			<div class="aui-bar-tab-label">推荐</div>
		</div>
		<div class="aui-bar-tab-item" tapmode>
            <!--<img class="tuijian" src="${path}/static/aui/myimages/icon-offer.png"/>-->
            <div class="icon xuanshagn"></div>
			<div class="aui-bar-tab-label">悬赏</div>
		</div>
		<div class="aui-bar-tab-item" tapmode>
			<div class="aui-bar-tab-label bar-tab-label-wen">问</div>
		</div>
		<div class="aui-bar-tab-item" tapmode>
            <!--<img class="tuijian" src="${path}/static/aui/myimages/icon-expert.png"/>-->
            <div class="icon zhuanjia"></div>
			<div class="aui-bar-tab-label">专家</div>
		</div>
		<div class="aui-bar-tab-item" tapmode>
            <!--<img class="tuijian" src="${path}/static/aui/myimages/icon-member.png"/>-->
            <div class="icon wode"></div>
			<div class="aui-bar-tab-label">我的</div>
		</div>
	</footer>
</body>
<script src="${path}/static/aui/myscript/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${path}/static/aui/script/aui-tab.js"></script>
<script type="text/javascript" src="${path}/static/aui/script/aui-scroll.js"></script>
<script type="text/javascript">
	apiready = function() {
		api.parseTapmode();
	};


//	视频播放js代码
    $.each($('.video-content'),function (index,item) {
       $(item).on('click',function (e) {
           var video = $(this).find("video").get(0);
           if(video.paused){
               video.play();
           }
       })
    })

//微信调取照片预览接口
//将函数作为参数，html架构加载完成之后执行
    function addLoadEvent(func){
        var oldonload=window.onload;
        //将原来的 onload 的值赋给临时变量 oldonload。
        if(typeof window.onload!="function"){
            //判断 onload 的类型是否是 function。如果已经执行window.onload=function(){...} 赋值，那么此时 onload 的类型就是 function
            //否，则说明 onload 还没有被赋值，当前任务 func 为第一个加入的任务
            window.onload=func();

            //作为第一个任务，给 onload 赋值
        }else{
            //是，则说明 onload 已被赋值，onload 中先前已有任务加入
            window.onload=function(){
                oldonload();
                func();
                //作为后续任务，追加到先前的任务后面
            }
        }
    }
//    创建一个空数组
    var imgs=new Array();
//    创建一个字符串
    var nowImgurl="";
    function getPicInfo(){
        var imgObj=document.getElementsByTagName('img');  //获取图文中所有的img标签对象
        for(var i=0; i<imgObj.length; i++) {
            imgs.push(imgObj[i].src);
            nowImgurl = this.src;    //获取当前点击图片url
            //下面调用微信内置图片浏览组建
            imgObj[i].onclick=function(){
                WeixinJSBridge.invoke("imagePreview",{
                    "urls":imgs,
                    "current":nowImgurl
                })
            }
        }
    }
    addLoadEvent(getPicInfo);    //监听事件



//	到底加载数据
    var scroll = new auiScroll({
        listen:true, //是否监听滚动高度，开启后将实时返回滚动高度
        distance:0 //判断到达底部的距离，isToBottom为true
    },function(ret){
        if(ret.isToBottom==true){
            var str=`<div class="aui-card-list">
            <div class="aui-card-list-header aui-card-list-user">
                <div class="aui-card-list-user-avatar">
                    <img src="${path}/static/aui/myimages/user-icon2.png" style="width:2rem" class="aui-img-round">
                </div>
                <div class="aui-card-list-user-name">
                    <div class="aui-text-info"><span>晓东</span></div>
                    <div class="aui-font-size-14 text-light">赏金￥<span>30</span></div>
                </div>
                <div class="aui-card-list-user-info text-light">瓷器收藏爱好者</div>
            </div>
            <div class="aui-card-list aui-border-t">

            <div class="aui-card-list-content">
                <div class="aui-row aui-row-padded">
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                </div>
                <div class="aui-row aui-row-padded">
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                </div>
                <div class="aui-row aui-row-padded">
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                    <div class="aui-col-xs-4">
                        <img src="${path}/static/aui/myimages/product.png">
                    </div>
                </div>
            </div>
             <div class="aui-card-list-content-padded aui-padded-b-5" style="padding-left: 1.5rem">
              真假？年代
            </div>
            </div>
            <div class="item-user">
                <div class="aui-card-list-header aui-card-list-user">
                    <div class="aui-card-list-user-avatar">
                        <img src="${path}/static/aui/myimages/user-icon2.png" style="width:2rem" class="aui-img-round">
                    </div>
                    <div class="aui-card-list-user-name">
                        <div class="aui-text-info"><span class="voice">10元学习<i></i></span></div>
                        <div class="aui-font-size-14 text-light"><span>12人查看</span></div>
                    </div>
                    <div class="aui-card-list-user-info text-light"><span>王云涛|控轩阁主人|中藏协会员，在读博...</span></div>
                </div>
            </div>
        </div>`
            $('.box').append(str)
        }
    });


	//这个用来做事件的
	var tab = new auiTab({
		element : document.getElementById("footer")
	}, function(ret) {
		if (ret) {
		if (ret.index == 5) { 
				window.location = "member.html";
				//隐藏第一个页面
				//document.getElementById("pagefirst").style.display = 'none';
				//显示第二5个页面
                 //测试Jquery调用ajax方法
                    $.ajax({
	              	type : "POST",
	              	url : "http://localhost:8080/DiscuzServer/wx/discuz/member/list",
	              	dataType : 'json',
	              	async: true,
	              	contentType : "application/json",
	              	data : {sort:'id',order:'asc'},
	              	success : function(ro) {
	              		//var message = ro.message;
	              		//alert(message);
	              		var rows="";
	              		$.each(ro.results, function(index, vo){
	                              rows =rows + "<tr>"+ 
	              	                "<td>"+vo.id+"</td>"+
	              	                "<td>"+vo.name+"</td>"+
	              	                "</tr>" ;
	              		});
	              		alert(rows);
	              		//queryBook();
	              	},
	              	error : function(err) {
	              		$( "#fail-dialog>p" ).html(err.message);
	              		$( "#fail-dialog" ).dialog({
	              			modal: true,
	              			buttons: {
	              				"关闭" : function(){
	              					$(this).dialog( "close" );
	              				}
	              			}
	              		});
	              	}
	              });
				return;
			}
		if (ret.index == 4) { 
				window.location = "expert.html";
			}
		if (ret.index == 3) {
				window.location = "quesadd.html";
			}
		if (ret.index == 2) { 
				window.location = "offer.html";
			}
	    if (ret.index == 1) {
				return;
		   }
		}
	});
	//下面是搜索用的JS代码
	    var searchBar = document.querySelector(".aui-searchbar");
	    var searchBarInput = document.querySelector(".aui-searchbar input");
	    var searchBarBtn = document.querySelector(".aui-searchbar .aui-searchbar-btn");
	    var searchBarClearBtn = document.querySelector(".aui-searchbar .aui-searchbar-clear-btn");
	    if(searchBar){
	        searchBarInput.onclick = function(){
	            searchBarBtn.style.marginRight = 0;
	        }
	        searchBarInput.oninput = function(){
	            if(this.value.length){
	                searchBarClearBtn.style.display = 'block';
	                searchBarBtn.classList.add("aui-text-info");
	                searchBarBtn.textContent = "搜索";
	            }else{
	                searchBarClearBtn.style.display = 'none';
	                searchBarBtn.classList.remove("aui-text-info");
	                searchBarBtn.textContent = "取消";
	            }
	        }
	    }
	    searchBarClearBtn.onclick = function(){
	        this.style.display = 'none';
	        searchBarInput.value = '';
	        searchBarBtn.classList.remove("aui-text-info");
	        searchBarBtn.textContent = "取消";
	    }
	    searchBarBtn.onclick = function(){
	        var keywords = searchBarInput.value;
	        if(keywords.length){
	            searchBarInput.blur();
	            document.getElementById("first-search-keywords").textContent = keywords;
	        }else{
	            this.style.marginRight = "-"+this.offsetWidth+"px";
	            searchBarInput.value = '';
	            searchBarInput.blur();
	        }
	   }
</script>
</html>