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
<%--        <div class="perOpt">--%>
<%--            <p class="optTitle">칼라 선택</p>--%>
<%--            <ul id="ul_color">--%>
<%--                <li><a href="javascript:void(0);" data-color="blue"><span class="cl black">블루</span></a></li>--%>
<%--                <li><a href="javascript:void(0);" data-color="brown"><span class="cl blue">브라운</span></a></li>--%>
<%--                <li><a href="javascript:void(0);" data-color="grey"><span class="cl purple">그레이</span></a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--        <div class="perOpt">--%>
<%--            <p class="optTitle">사이즈 선택</p>--%>
<%--            <ul id="ul_size">--%>
<%--                <li><a href="javascript:void(0);" data-size="1000">1000</a></li>--%>
<%--                <li><a href="javascript:void(0);" data-size="1500">1500</a></li>--%>
<%--                <li><a href="javascript:void(0);" data-size="1900">1900</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
    </div>

    <div class="fixFunc inner">
        <span class="btnConfirm"><a href="javascript:void(0);">확인</a></span>
        <%--		<span class="btnView"><a href="javascript:void(0);">AR 보기</a></span>--%>
    </div>
</div>


<script>
    var color = "blue";
    var size = "1000";

    var optionName = ['color', 'size'];

    var optionList = [
        ['blue', 'gray', 'brown'],
        ['1000', '1500', '1900']
    ];

    var optionArr = new Array();

    var optionImg = [
        ['blue','1000','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.usdz'],
        ['blue','1500','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1500.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1500.usdz'],
        ['blue','1900','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1900.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1900.usdz'],
        ['gray','1000','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.usdz'],
        ['gray','1500','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1500.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1500.usdz'],
        ['gray','1900','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1900.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1900.usdz'],
        ['brown','1000','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.usdz'],
        ['brown','1500','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1500.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1500.usdz'],
        ['brown','1900','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.gltf','https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.usdz'],
    ];

    $(function () {
        $.each(optionName, function (i, v) {
            var optHtml = '';
            optHtml += '        <div class="perOpt">';
            optHtml += '            <p class="optTitle">사이즈 선택</p>';
            optHtml += '            <ul id="ul_'+optionName[i]+'" class="sel_ul">';
            $.each(optionList[i], function (j, v) {
                optHtml += '                <li><a href="javascript:void(0);" data-value="'+optionList[i][j]+'">'+optionList[i][j]+'</a></li>';
            });
            optHtml += '            </ul>';
            optHtml += '        </div>';
            console.log(optHtml);
            $("#div_Option").append(optHtml);
        });

        // 옵션 선택하기
        $(".openOpt a").click(function () {
            $(".optWrap").addClass("on");
            $(".fixFunc.inner").show();
        });

        // 확인
        $(".btnConfirm a").click(function () {
            $(".optWrap").removeClass("on");
            $(".fixFunc.inner").hide();

            if(chkOption()){
                $("#div_Cover").hide();
                $("#ar-button").show();
            }
        });


        // 색상 선택
        // $("#ul_color a").on('click', function () {
        //     // alert('ulcolor');
        //     $("#ul_color a").removeClass("on");
        //     $(this).toggleClass("on");
        //     color = $(this).data("color");
        //     setSrc();
        // });

        // 사이즈 선택
        // $("#ul_size a").on('click', function () {
        //     // alert('ulcolor');
        //     $("#ul_size a").removeClass("on");
        //     $(this).toggleClass("on");
        //     size = $(this).data("size");
        //     setSrc();
        // });

        $(".sel_ul a").on('click', function() {
            $(this).parents('ul').find('a').removeClass("on");
            $(this).toggleClass("on");
            if(chkOption()){
                setSrc(optionArr);
                $("#div_Cover").hide();
            }
        });




        // $(".perOpt li a").click(function() {
        // 	$(".perOpt li a").removeClass("on");
        // 	$(this).toggleClass("on");
        // });

    });

    // function setSrc() {
    //     // 	modelViewerTexture.src = options[index].value;
    //     // 	modelViewerTexture.iosSrc = options[index].id;
    //     https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.gltf
    //         $("#duck").attr("src", "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_" + color + "_" + size + ".gltf");
    //     $("#duck").attr("iosSrc", "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_" + color + "_" + size + ".usdz");
    // }

    function setSrc(arrValue) {
        for(var i=0; i<optionImg.length; i++) {
            var tmpArr = optionImg[i];
            var resultCnt = 0;
            for(var j=0; j<optionName.length; j++) {
                if(tmpArr[j] == arrValue[j]){
                    resultCnt = resultCnt+1;
                }
            }
            if(resultCnt==optionName.length) {
                console.log(optionImg[i][optionName.length]);
                console.log(optionImg[i][optionName.length+1]);
                $("#duck").attr("src", optionImg[i][optionName.length]);
                $("#duck").attr("iosSrc", optionImg[i][optionName.length]+1);
            }
        }
    }

    function chkOption() {
        var optionCnt = 0;
        optionArr = new Array();
        $.each(optionName, function(i, v){
            if($("#ul_"+optionName[i]).find("a[class=on]").length>0) {
                optionCnt = optionCnt+1;
                optionArr.push($("#ul_"+optionName[i]).find("a[class=on]").data("value"));
            }
        });

        if(optionCnt==optionName.length){
            return true;
        } else {
            return false;
        }
    }
</script>

<script type="module">
    var optionName = ['color', 'size'];
    var optionList = [
        ['blue', 'brown', 'gray'],
        ['1000', '1500', '1900']
    ];

    var optionImg = [

    ]

    // const modelViewerTexture = document.querySelector("model-viewer#duck");
    // const option1 = document.querySelector('#option1');
    // const option2 = document.querySelector("#option2");
    // let i = [];
    //
    // //최초 옵션 목록
    // let parentOption = [
    // 	{ v: "", t: "Color" },
    // 	{ v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.gltf", t: "Blue" },
    // 	{ v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.gltf", t: "Brown" },
    // 	{ v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.gltf", t: "Grey" }
    // ];
    //
    // //최초 옵션 선택 후 두번째 옵션 목록
    // //v는 웹 페이지 상에 3d이미지, i는 iphone을 위한 usdz 파일
    // //v는 value 값으로 넣어주었고, i는 id 값으로 부여해서 각각 model-viewer 속성에 부여
    // let childOption1 = [
    // 	{ v: "", t: "Size" },
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.usdz",
    // 		t: "1000"
    // 	},
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1500.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1500.usdz",
    // 		t: "1500"
    // 	},
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1900.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1900.usdz",
    // 		t: "1900"
    // 	},
    // ];
    //
    // let childOption2 = [
    // 	{ v: "", t: "Size" },
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.usdz",
    // 		t: "1000"
    // 	},
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1500.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1500.usdz",
    // 		t: "1500"
    // 	},
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1900.usdz",
    // 		t: "1900"
    // 	},
    // ];
    //
    // let childOption3 = [
    // 	{ v: "", t: "Size" },
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.usdz",
    // 		t: "1000"
    // 	},
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1500.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1500.usdz",
    // 		t: "1500"
    // 	},
    // 	{
    // 		v: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1900.gltf",
    // 		i: "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1900.usdz",
    // 		t: "1900"
    // 	},
    // ];
    //
    //
    //
    // function loadParentOption() {
    // 	let h = [];
    // 	parentOption.forEach(item => {
    // 		h.push('<option value=' + item.v + '>' + item.t + '</option>');
    // 	});
    //
    // 	document.querySelector("#option1").innerHTML = h.join("");
    // }
    //
    // function selectOption2() {
    // 	let parentOption = document.querySelector("#option1").value;
    // 	let h = [];
    // 	if (parentOption == "") {
    //
    // 	} else {
    // 		if (parentOption == "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_blue_1000.gltf") {
    // 			childOption1.forEach(item => {
    // 				h.push('<option value=' + item.v + ' id=' + item.i + '>' + item.t + '</option>');
    // 			});
    // 		} else if (parentOption == "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_brown_1000.gltf") {
    // 			childOption2.forEach(item => {
    // 				h.push('<option value=' + item.v + ' id=' + item.i + '>' + item.t + '</option>');
    // 			});
    // 		} else if (parentOption == "https://hellovr.s3.ap-northeast-2.amazonaws.com/Rugs_Minimal/Circle_grey_1000.gltf") {
    // 			childOption3.forEach(item => {
    // 				h.push('<option value=' + item.v + ' id=' + item.i + '>' + item.t + '</option>');
    // 			});
    // 		}
    // 	}
    //
    // 	document.querySelector("#option2").innerHTML = h.join("");
    //
    // }
    //
    // function selectSize(event) {
    // 	const options = event.currentTarget.options;
    // 	const index = options.selectedIndex;
    //
    // 	modelViewerTexture.src = options[index].value;
    // }
    //
    // function selectSize2(event) {
    // 	const options = event.currentTarget.options;
    // 	const index = options.selectedIndex;
    //
    // 	modelViewerTexture.src = options[index].value;
    // 	modelViewerTexture.iosSrc = options[index].id;
    // }
    //
    // loadParentOption();
    // option1.addEventListener("change", selectOption2);
    // option1.addEventListener("change", selectSize);
    // option2.addEventListener("change", selectSize2);

</script>
<script type="module" src="js/model-viewer.js"></script>
</body>
</html>
