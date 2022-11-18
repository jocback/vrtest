<%--
  Created by IntelliJ IDEA.
  User: jaehoonyoun
  Date: 2022/11/16
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <title>vrtest</title>


    <link rel="stylesheet" href="css/style.css?123">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&family=Roboto&display=swap"
          rel="stylesheet">
    <script src="js/jquery-1.10.2.js"></script>

    <%--	<style>--%>
    <%--        model-viewer {--%>
    <%--            width: 80%;--%>
    <%--            height: 80%;--%>
    <%--        }--%>
    <%--	</style>--%>
</head>
<body>
<div class="wrap">
    <div class="mSec">
        <div class="mCon beforeCon" id="div_Cover">
            먼저 옵션을 선택해 주세요.
        </div>
        <model-viewer id="duck" camera-controls touch-action="none" width="100%" height="100%"
                      src="https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.gltf" ar
                      alt="A 3D model of a duck" ar-scale="fixed" xr - environment
                      ios-src="https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.usdz">
        </model-viewer>
    </div>
    <div class="fixFunc">
        <span class="openOpt"><a href="javascript:void(0);">옵션 선택하기</a></span>
    </div>
</div>

<div class="optWrap">
    <div id="div_Option">
    </div>

    <div class="fixFunc inner">
        <span class="btnConfirm"><a href="javascript:void(0);">확인</a></span>
        <%--		<span class="btnView"><a href="javascript:void(0);">AR 보기</a></span>--%>
    </div>
</div>


<%--<script>--%>

<%--    var optionArr = new Array();--%>

<%--    // 옵션 종류--%>

<%--    var optionName = ['color', 'size', 'location'];--%>

<%--    // 옵션 별 리스트--%>
<%--    var optionList = [--%>
<%--        ['blue', 'gray', 'brown'],--%>
<%--        ['1000', '1500', '1900'],--%>
<%--        ['seoul', 'ulsan', 'busan']--%>
<%--    ];--%>

<%--    // 옵션별 이미지--%>
<%--    var optionImg = [--%>
<%--        ['blue','1000','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.usdz'],--%>
<%--        ['blue','1500','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1500.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1500.usdz'],--%>
<%--        ['blue','1900','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1900.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1900.usdz'],--%>
<%--        ['gray','1000','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.usdz'],--%>
<%--        ['gray','1500','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1500.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1500.usdz'],--%>
<%--        ['gray','1900','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1900.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1900.usdz'],--%>
<%--        ['brown','1000','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.usdz'],--%>
<%--        ['brown','1500','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1500.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1500.usdz'],--%>
<%--        ['brown','1900','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.usdz'],--%>
<%--        ['brown','1900','seoul','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.usdz'],--%>
<%--    ];--%>

<%--    $(function () {--%>
<%--        $.each(optionName, function (i, v) {--%>
<%--            var optHtml = '';--%>
<%--            optHtml += '        <div class="perOpt">';--%>
<%--            optHtml += '            <p class="optTitle">'+optionName[i]+' 선택</p>';--%>
<%--            optHtml += '            <ul id="ul_'+optionName[i]+'" class="sel_ul">';--%>
<%--            $.each(optionList[i], function (j, v) {--%>
<%--                optHtml += '                <li><a href="javascript:void(0);" data-value="'+optionList[i][j]+'">'+optionList[i][j]+'</a></li>';--%>
<%--            });--%>
<%--            optHtml += '            </ul>';--%>
<%--            optHtml += '        </div>';--%>
<%--            console.log(optHtml);--%>
<%--            $("#div_Option").append(optHtml);--%>
<%--        });--%>

<%--        // 옵션 선택하기--%>
<%--        $(".openOpt a").click(function () {--%>
<%--            $(".optWrap").addClass("on");--%>
<%--            $(".fixFunc.inner").show();--%>
<%--        });--%>

<%--        // 확인--%>
<%--        $(".btnConfirm a").click(function () {--%>
<%--            $(".optWrap").removeClass("on");--%>
<%--            $(".fixFunc.inner").hide();--%>

<%--            if(chkOption()){--%>
<%--                $("#div_Cover").hide();--%>
<%--                $("#ar-button").show();--%>
<%--            }--%>
<%--        });--%>

<%--        $(".sel_ul a").on('click', function() {--%>
<%--            $(this).parents('ul').find('a').removeClass("on");--%>
<%--            $(this).toggleClass("on");--%>
<%--            if(chkOption()){--%>
<%--                setSrc(optionArr);--%>
<%--                $("#div_Cover").hide();--%>
<%--            }--%>
<%--        });--%>

<%--    });--%>

<%--    function setSrc(arrValue) {--%>
<%--        for(var i=0; i<optionImg.length; i++) {--%>
<%--            var tmpArr = optionImg[i];--%>
<%--            var resultCnt = 0;--%>
<%--            for(var j=0; j<optionName.length; j++) {--%>
<%--                if(tmpArr[j] == arrValue[j]){--%>
<%--                    resultCnt = resultCnt+1;--%>
<%--                }--%>
<%--            }--%>
<%--            if(resultCnt==optionName.length) {--%>
<%--                console.log(optionImg[i][optionName.length]);--%>
<%--                console.log(optionImg[i][optionName.length+1]);--%>
<%--                $("#duck").attr("src", optionImg[i][optionName.length]);--%>
<%--                $("#duck").attr("iosSrc", optionImg[i][optionName.length]+1);--%>
<%--            }--%>
<%--        }--%>
<%--    }--%>

<%--    function chkOption() {--%>
<%--        var optionCnt = 0;--%>
<%--        optionArr = new Array();--%>
<%--        $.each(optionName, function(i, v){--%>
<%--            if($("#ul_"+optionName[i]).find("a[class=on]").length>0) {--%>
<%--                optionCnt = optionCnt+1;--%>
<%--                optionArr.push($("#ul_"+optionName[i]).find("a[class=on]").data("value"));--%>
<%--            }--%>
<%--        });--%>

<%--        if(optionCnt==optionName.length){--%>
<%--            return true;--%>
<%--        } else {--%>
<%--            return false;--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>


<!--<script type="module" src="js/model-viewer.js"></script>-->
<script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.js">
</script>
<script src="js/vrtest.js"></script>
<style>
    .slot.exit-webxr-ar-button:not(.enabled) {
        display: block !important;
    }
</style>
</body>
</html>
