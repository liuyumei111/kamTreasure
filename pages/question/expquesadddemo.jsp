<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no,
     initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <!--引入px单位转rem单位函数-->
    <script src="${path}/static/aui/myscript/pxrem1.js"></script>
    <!--图片上传css-->
    <link rel="stylesheet" href="${path}/static/aui/mycss/imgupload.css">
    <!--本页面css-->
    <link rel="stylesheet" href="${path}/static/aui/mycss/quesadd1.css">
    <!--添加图片控制-->
    <script src="${path}/static/aui/myscript/imgupload1.js"></script>
    <title>提问</title>
</head>
<body>
<div class="content">
    <!--专家介绍-->
<!-- <div class="expert clearfix">
        左右
        <div class="expert-lr">
            <div class="expert-left clearfix">
                <div  class="Photo">
                    <i class="img-v"></i>
                </div>

                <span class="text-chuan">川先生</span>
                <br>
                <span class="text-ren">认证专家&nbsp;&nbsp;古典家具</span>

            </div>
            <div class="expert-right">
                <b class="Read">订阅</b>
                <b class="Read-text">666人订阅</b>
            </div>
        </div> -->

        <!--文字部分-->
<!--         <div class="expert-text">
            <b style="color: #7a7a7a">
                中国古典家具收藏夹，新中式家具设计师，万乾堂古典家具博物馆创始人，
                北京收藏家协会古典家具专业委员会主任，中央美院客座教授，故宫出版社
                《大漆家具》--书作者
            </b>
        </div>
</div>  -->
<!--输入框-->
<!-- <p class="ask">*向刘先生提问,等TA语音回答;超48小时,将支付路径全额退款</p>
<div class="detail-text">
    <textarea placeholder="请输入物品的详细信息以及规格"></textarea>
</div> -->
<!--添加照片-->
<p class="ask-a">上传图片或是视频可以让回答者进一步回答您的问题</p>
<div class="container">
        <!--    照片添加    -->
    <div class="z_photo z_p1 clearfix">

            <div class="z_file z_f1">
                <input type="file" name="file" id="file" value="" accept="image/*" multiple onchange="imgChange('z_p1','z_f1');" />
            </div>
            <span class="textdesc">上传图片</span>
        </div>
        <!--遮罩层-->
    <div class="z_mask">
            <!--弹出框-->
            <div class="z_alert">
                <p>确定要删除这张图片吗？</p>
                <p>
                    <span class="z_cancel">取消</span>
                    <span class="z_sure">确定</span>
                </p>
            </div>
        </div>
</div>
<div class="container">
        <!--    照片添加    -->
    <div class="z_photo z_p2 clearfix">

            <div class="z_file z_f2">
                <input type="file" name="video" id="video" value="" accept="video/*" onchange="vidChange('z_p2','z_f2');" />
            </div>
            <span class="textdesc">上传视频</span>

        </div>
        <!--遮罩层-->
    <div class="z_mask">
            <!--弹出框-->
            <div class="z_alert">
                <p>确定要删除这张图片吗？</p>
                <p>
                    <span class="z_cancel">取消</span>
                    <span class="z_sure">确定</span>
                </p>
            </div>
    </div>
</div>
    <!--单选框-->
<div class="checkbox">
    <input type="radio" name="jjan" class="checkbox-input" checked='checked' id="checkboxid1" num=1>
    <span class="checkbox-text" >公开提问，答案每次被人偷学一次，你从中分成￥2.5</span>
    <br>
    <input type="radio" name="jjan" class="checkbox-input" id="checkboxid2" num=2><span class="checkbox-text"> 私密提问，唯你能见专属答案</span>
</div>
    <!--提问按钮-->
<button class="button" onclick="submitform();">￥50.00提问</button>
<p class="money">共回答88个回答，一共收入7612.50元</p>
</div>
</body>
<script src="${path}/static/aui/myscript/jquery-1.8.3.min.js"></script>
<script type="text/javascript">

var openIdv = "${openId}";
var expertId = ${expertid};

function submitform(){
	
	    $.each($("input[name='jjan']"), function (index, item) {
	            if ($(item).attr("checked") == 'checked') {
                          alert($(item).attr("num"));
      	        } 
	    });
}

function addexpertinfo(){
	
    //测试Jquery调用ajax方法
    $.ajax({
  	type : "POST",
  	url : "${path}/wx/web/expert/getexpert",
  	dataType : 'json',
  	async: true,
  	contentType : "application/json",
  	data : {openId:openIdv},
  	success : function(ro) {
  		if(ro.code == 200){
  			//确证 是专家还是认证专家
  			var arthStatusstr = "专家";
  			if(ro.datas.memType == '1'){
			      //alert("会员");
			      if(ro.datas.authStatus == 1){
			    	  arthStatusstr = "认证专家";
 			      }else{
 			    	  arthStatusstr = "专家";
 			      }
			}
  			var arthStatusstr = "认证专家";
  	        var bfrows = "";		
  		   //添加专家介绍信息
    bfrows = bfrows	+ `<div class="expert clearfix">
  		                     <div class="expert-lr">
  		                         <div class="expert-left clearfix">
  	                             <div  class="Photo">
                                    <img src=`+ro.datas.picUrl+` alt="">
                                    <i class="img-v"></i>
                                 </div>
  		                             <span class="text-chuan">`+ro.datas.name+`</span>
  		                             <br>
  		                             <span class="text-ren">`+arthStatusstr+ro.datas.expStrong+`</span>
  		                         </div>
  		                         <div class="expert-right">
  		                             <b class="Read" onclick="focusexpert(`+ro.datas.id+`)">订阅</b>
  		                             <b class="Read-text">`+ro.datas.sumFocus+`人订阅</b>
  		                         </div>
  		                     </div>
                           <div class="expert-text"><b style="color: #7a7a7a">`+ro.datas.desc+`</b></div>
  		               </div>
  		               <p class="ask">*向 `+ro.datas.name+` 专家提问,等TA语音回答;超48小时,将支付路径全额退款</p>
  		               <div class="detail-text"><textarea placeholder="请输入您要提问的问题详情" id="textareadescid"></textarea></div>`;
  			
  		    //添加专家后面信息
  		    var afrows = "";
  			
            <!--单选框-->
    bfrows = bfrows	+ `<div class="checkbox">
                         <input type="radio" name="jjan" class="checkbox-input" checked='checked' id="checkboxid1" num=1>
                         <span class="checkbox-text" >公开提问，答案每次被人偷学一次，你从中分成￥2.5</span>
                         <br>
                         <input type="radio" name="jjan" class="checkbox-input" id="checkboxid2" num=2><span class="checkbox-text"> 私密提问，唯你能见专属答案</span>
                     </div>
                         <!--提问按钮-->
                     <button class="button" onclick="submitform();">￥50.00提问</button>
                     <p class="money">共回答88个回答，一共收入7612.50元</p>`;
  		    
  		    
  		    
  		    
  		    
/*   	    //$("#username").html("输入要添加内容即可");
  			$("#username").html(ro.datas.name);
  			$("#userpicurl").attr('src',ro.datas.picUrl);
  			if(ro.datas.memType == '0'){
  			      //alert("会员");
  			    $("#memTypeid").html("会员");
  			    $("#expertbutton").css("display",'block');
  			}

  			$("#sumFocusid").html(ro.datas.sumFocus);
  			$("#sumFollowerid").html(ro.datas.sumFollower); */
  			
  		}
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
	
	
}


$(function(){

    alert("初始化成功");
    alert("专家id:"+ expertId);
    //searchlistfortype(strongId);
});

</script>
</html>
