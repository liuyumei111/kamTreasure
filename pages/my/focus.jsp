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
    <title>关注</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/aui/mycss/aui.css" />
    <link rel="stylesheet" type="text/css" href="${path}/static/aui/mycss/focus.css" />
</head>
<body>
<div class="content-box1">
    <!--专家-->
    <ul>
        <li class="bottom-border"><div class="aui-card-list-header aui-card-list-user content-box">
            <div class="aui-card-list-user-avatar user-header-img">
                <i class="user-weibo"></i>
                <img src="${path}/static/aui/myimages/user-icon2.png" class="aui-img-round">
            </div>
            <div class="aui-card-list-user-name">
                <div class="aui-text-info"><span>刘川生</span></div>
                <div class="aui-font-size-14 text-light ">
                    <span style="color: #1a1a1a">666人订阅</span>
                    <input type="button"  value="关注" class="aa">
                </div>
            </div>
            <div class="aui-card-list-user-info text-light text-overflow-fag">中国艺术研究研究院员，中国瓷器专家，著名陶艺师，师中央美术学院，中国艺术研究研究院员，中国瓷器专家，著名陶艺师，师中央美术学院</div>
        </div></li>
        <li class="bottom-border"><div class="aui-card-list-header aui-card-list-user content-box">
            <div class="aui-card-list-user-avatar user-header-img">
                <i class="user-weibo"></i>
                <img src="${path}/static/aui/myimages/user-icon2.png" class="aui-img-round">
            </div>
            <div class="aui-card-list-user-name">
                <div class="aui-text-info"><span>刘川生</span></div>
                <div class="aui-font-size-14 text-light ">
                    <span style="color: #1a1a1a">666人订阅</span>
                    <input type="button"  value="关注" class="aa">
                </div>
            </div>
            <div class="aui-card-list-user-info text-light text-overflow-fag">中国艺术研究研究院员，中国瓷器专家，著名陶艺师，师中央美术学院，中国艺术研究研究院员，中国瓷器专家，著名陶艺师，师中央美术学院</div>
        </div></li>
        <!--热门推荐-->
        <div class="Hot">
            <div>热门推荐</div>
            <li class="bottom-border"><div class="aui-card-list-header aui-card-list-user content-box">
                <div class="aui-card-list-user-avatar user-header-img">
                    <i class="user-weibo"></i>
                    <img src="${path}/static/aui/myimages/user-icon2.png" class="aui-img-round">
                </div>
                <div class="aui-card-list-user-name">
                    <div class="aui-text-info"><span>刘川生</span></div>
                    <div class="aui-font-size-14 text-light ">
                        <span style="color: #1a1a1a">666人订阅</span>
                        <input type="button"  value="关注" class="aa">
                    </div>
                </div>
                <div class="aui-card-list-user-info text-light text-overflow-fag">中国艺术研究研究院员，中国瓷器专家，著名陶艺师，师中央美术学院，中国艺术研究研究院员，中国瓷器专家，著名陶艺师，师中央美术学院</div>
            </div></li>
        </div>
    </ul>
</div>
</body>
<!--搜索框js-->
<script src="${path}/static/aui/myscript/search.js"></script>
<script type="text/javascript" src="${path}/static/aui/myscript/jquery-1.8.3.min.js"></script>
<script>
    apiready = function() {
        api.parseTapmode();
    };
    $(document).ready(function () {
        $.each($(".aa"), function (index, item) {
            //给每个按钮设置一个状态
            item.onOff = true;
            //添加点击事件
            $(item).on("click", function () {
                if (this.onOff) {
                    $('.Hot').append($(this).parent().parent().parent().parent());
                    $(this).val("取消关注");
                } else {
                    $(this).val("关注");
                }
                this.onOff = !this.onOff;
            })
        })
    });

</script>
</html>