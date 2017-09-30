<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>开通专家</title>
    <link rel="stylesheet" href="${path}/static/aui/css/aui.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/aui/mycss/member.css" />
    <style>
        .open-box{
            background: #fafafa;
        }
        .margin-b-10{
            margin-bottom: 0.4rem;
        }
        .long{
            padding: 0.5rem 0 0.5rem 1rem;
            background: #ffffff;
        }
        .long>span{
            display: inline-block;
            padding: 0.2rem;
            margin: 0.2rem;
            border: 1px solid #931a02;
            border-radius: 10%;
            text-align: center;
        }
        .back{
            background: #931a02;
            color: #fff;
        }
        .introduce{
            margin: 0.4rem 0 0.4rem 0;
            background: #ffffff;

        }
        .introduce>h3{
            padding: 0.7rem 0 0.2rem 1rem;
        }
        .introduce>textarea{
            width: 100%;
            height: 5rem;
            padding-left: 0.5rem;
            /*background: red;*/
            color: #040404;
        }
        .pay{
            background: #fff;
            padding: 1rem 0 0.8rem 0;

        }
        .pay>p{
            padding-left: 1rem;
        }
        .pay>p>input{
            display: inline-block;
            /*background: red;*/
            border: 1px solid #931a02;
            text-align: center;
            padding:0 0.2rem 0 0.2rem;
            width: 2rem;
        }
        .open-box>button{
            padding: 0 1.2rem 0 1.2rem;
            background: #931a02;
            border: none;
            margin: 1rem auto 1rem;
            display: block;
        }

    </style>
</head>
<body>
<div class="aui-content aui-margin-b-15 open-box" id="pagefive">
    <section class="aui-content user-info aui-text-center aui-margin-b-15">
        <img class="avatar aui-img-round" id="userpicurl">
        <div class="aui-row aui-margin-t-15">
            <div class="aui-col-xs-6 aui-text-right aui-border-r aui-padded-r-10">
                <div class="aui-label aui-label-info" id="memTypeid"></div>
            </div>
            <div class="aui-col-xs-6 aui-text-left aui-padded-l-10" id="username">
            </div>
        </div>
    </section>
    <!--擅长领域-->
    <section class="aui-content long" id="stronglist">
        <h3>选择你擅长的领域</h3>
    </section>
    <!--自我介绍-->
    <section class="aui-content introduce">
        <!-- <h3>自我介绍</h3> -->
        <textarea id="textareaid" placeholder="请在此处添加自我介绍 限长n个字"></textarea>

    </section>
    <!--支付x元-->
    <section class="pay">
        <p>向我提问需要支付<input onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" id="payfeeid" value="0"></input>元</p>
    </section>
    <button onclick="formsubmit()">开通</button>
</div>
<!--引入jquery-->
<script type="text/javascript" src="${path}/static/aui/myscript/jquery-1.8.3.min.js"></script>
<script>
	var openIdv = "${openId}";

    $(function(){
        //测试Jquery调用ajax方法
        $.ajax({
      	type : "POST",
      	url : "${path}/wx/web/member/getmember",
      	dataType : 'json',
      	async: true,
      	contentType : "application/json",
      	data : {openId:openIdv,order:'asc'},
      	success : function(ro) {
      		
      		if(ro.code == 200){
      			//$("#username").html("输入要添加内容即可");
      			$("#username").html(ro.datas.name);
      			$("#userpicurl").attr('src',ro.datas.picUrl);
      			if(ro.datas.memType == '0'){
      			      //alert("会员");
      			    $("#memTypeid").html("会员");
      			}
      			if(ro.datas.memType == '1'){
      			      //alert("会员");
      			      if(ro.datas.authStatus == 1){
      			         $("#memTypeid").html("认证专家");
      			      }else{
      			         $("#memTypeid").html("专家");
      			      }
      			}
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
       //动态添加擅长分类的类型 并添加事件
        $.ajax({
          	type : "POST",
          	url : "${path}/wx/web/strong/getlist",
          	dataType : 'json',
          	async: true,
          	contentType : "application/json",
          	data : {openId:openIdv},
          	success : function(ro) {
          		if(ro.code == 200){
          			var rows="";
          	  		$.each(ro.datas, function(index, vo){
          	  			if(index == 0){
           	               rows =rows + "<span class='back' num="+vo.id+" name='strongitems'>"+vo.strongName+"</span>";
          	  			}else{
           	               rows =rows + "<span num="+vo.id+" name='strongitems'>"+vo.strongName+"</span>";
          	  			}
          	  		});
          	  	    $("#stronglist").append(rows);
          		}
          		//下面要动态添加事件把这些动作添加到按钮上
          	    $.each($('span'), function (index, item) {
          	        $(item).on('click', function () {
          	            if ($(this).attr("class") == 'back') {
          	                $(this).removeClass('back')
          	            } else {
          	                $(this).addClass('back')
          	            }
          	        })
          	    });
          	},
          	error : function(err) {
          		  alert(err.message);

          	}
          });
       

    });
    //专家申请提交方法
  	//var itemval = $(item).attr("num");
  	//var itemname = $(item).text();
    function formsubmit(){
    	//全局合格问题
		var flag = false;
		
    	var strongTypes = new Array();
    	var items ="";
		var j=0;
   	    $.each($("span[name='strongitems']"), function (index, item) {
  	            if ($(item).attr("class") == 'back') {
  	            	   flag = true;
  	                   var myMap = {};    //对象
			           myMap['id'] = $(item).attr("num");
			           myMap['strongName'] = $(item).text();
			           strongTypes[j]=myMap;
  	                   j++;
          	    } 
  	    });
  	    $.each($("span[name='strongitems']"), function (index, item) {
  	            if ($(item).attr("class") == 'back') {
  	            	   flag = true;
  	                   items = items + $(item).attr("num")+";";    //对象
  	                   j++;
          	    } 
  	    });
  	    if(!flag){
  	    	var a=confirm("请选择专家擅长!");
  	    	 if(a==true){
  	    		 alert("谢谢合作");
  	    	 }
  	    	return;
  	    }
  	    
		//var mapString=JSON.stringify(strongTypes);
		
		//alert(mapString);
		//return;
		//节点1====================================第一部分跳转
		
		
        // 2 取到广本中数据
        var textareav = $("#textareaid").val();
        if(textareav==null||textareav==undefined||textareav==''){
        	var a=confirm("请完善自我介绍!");
        }
        //alert("文本中内容是:"+textareav);
		//节点2====================================第二部分跳转
        // 3 取到 添加的数值
        var payfeeidv = $("#payfeeid").val();
        if(payfeeidv==null||payfeeidv==undefined||payfeeidv==''){
        	payfeeidv = 0;
        }
        //alert("payfee内容是:"+payfeeidv);
		//节点3====================================第三部分跳转
        //发起请求提交申请专家代码
        
        //传输对象的形式
         var parms = {
        	openId : openIdv,
        	content : textareav,
        	fee : payfeeidv,
        	strongList : items,
           };
       //alert(JSON.stringify(parms));
       //return;
        $(function(){
            $.ajax({
          	dataType : "JSON",
          	type : "POST",
          	url : "${path}/wx/web/expert/applysubmit",
          	data : parms,
          	async: false,
          	success : function(ro) {
          		if(ro.code == 200){
                      alert("成功");
                      window.location = "${path}/wx/web/main/member?openId=${openId}";
          		}else{

          		}
          	},
          	error : function(err) {
               // alert(err.message);
                  alert("调用异常");
          	}
          });
        });

        //可以接收数组-这个方案主要发送数组数据====测试可以成功
        //@RequestBody ArrayList<DisExpertStrong> strongitems ==后台接收方案
/*         $(function(){
            $.ajax({
          	dataType : "JSON",
          	type : "POST",
          	url : "${path}/wx/web/member/applysubmit",
            contentType:'application/json;charset=UTF-8',//关键是要加上这行
            traditional:true,//这使json格式的字符不会被转码
          	data : JSON.stringify(strongTypes),
          	async: false,
          	success : function(ro) {
          		  alert(ro.code);
          		if(ro.code == 200){
                      alert("成功");
          		}else{

          		}
          	},
          	error : function(err) {
               // alert(err.message);
                  alert("调用异常");
          	}
          });
        }); */

    }
    
    
</script>
</body>
</html>