<%@page import="java.util.List"%>
<%@page import="dto.KinnImage"%>
<%@page import="dto.ImageRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8">
    <title>HTML5 with Hanbit</title> 
    <!-- 초기화 -->
    <style>
        * {
            margin: 0; padding: 0;
            font-family: 'Malgun Gotic', sans-serif;
        }

        a { text-decoration: none; }
        img { border: 0; }
        li { list-style: none; }
        html { background: #f7f5f5; }
    </style>
    <!-- 헤더 -->
    <style>
        #main-header {
            height: 40px;
            background: #faf7f7;

            position: relative;
        }

        .header-search-form {
            float: left;
        }

        .header-title {
            position: absolute;
            width: 200px; height:  40px;
            left: 50%; margin-left: -100px;
            background: url('./images/logo.png');
            background-repeat: no-repeat;

            text-indent: -9999px;
        }

        .header-menu {
            float: right;
        }
    </style>
    <!-- 드롭다운 -->
    <style>
        .outer-menu {
            float: left;
            width: 100px; height: 20px;
            line-height: 20px;
            padding: 10px 0;
            position: relative;
            text-align: center;

            font-size: 13px;
            font-weight: bold;

            z-index: 9999;
        }

        .outer-menu:hover { background: #E1DFDF; }

        .inner-menu {
            display: none;
            background: #FFFFFF;
            margin-top: 10px;
            width: 100%;

            border-top: 1px solid #cccaca;
            box-shadow: 0 2px 4px rgba(34,25,25,0.5);
        }

        .inner-menu a {
            display: block;
            padding: 5px 10px;
            z-index: 5000;
        }

        .inner-menu a:hover { background: #E1DFDF; }
    </style>
    <!-- 네비게이션 메뉴 -->
    <style>
        #main-navigation {
            height: 30px;
            background: #faf7f7;
            border-top: 1px solid #cfcaca;
            box-shadow: 1px 3px 3px rgba(34, 25, 25, 0.4);
        }

        #main-navigation > ul {
            overflow:hidden;
            text-align: center;
        }

        #main-navigation > ul > li {
            display: inline;

            padding: 0 5px;

            line-height: 30px;
            font-size: 13px;
            color: #524D4D;
            text-shadow: 0 1px 1px white;
        }

        #main-navigation > ul > li:hover { 
            background: #E1DFDF;
            border-radius: 2px;
        }
    </style>
    <!-- 검색 양식 -->
    <style>
        .header-search-form {
            height: 26px;
            padding: 7px;
        }

        .input-search {
            display: block;
            float: left;

            background-color: #FFFFFF;
            border: 1px solid #CCCCCC;
            border-radius: 15px 0 0 15px;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);

            width: 120px; height: 24px;
            padding: 0 0 0 10px;
            font-size: 12px;
            color: #555555;
        }

        .input-search:focus {
            border-color: rgba(82, 168, 236, 0.8);
            outline: 0;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
        }

        .input-search-submit {
            display: block;
            float: left;

            width: 50px; height: 26px;
            border-radius: 0 15px 15px 0;
            border: 1px solid #CCCCCC;

            margin-left: -1px;

            vertical-align: top;
            display: inline-block;
        }

    </style>
    <!-- 종이 스타일 -->
    <style>
        .paper {
            width: 190px;
            margin-top: 10px;
            padding: 15px 15px 0;
            font-size: 11px;
            background: #FFFFFF;
            box-shadow: 0 1px 3px rgba(34, 25, 25, 0.4);
        }

        .paper-content {
            margin: 0 -15px;
            margin-top: 10px;
            padding: 10px 15px;
            background: #F2F0F0;

            overflow: hidden;
        }

        .paper-description {
            margin: 10px 0;
        }

        .paper-link {
            display: block;
            float: left;
        }

        .paper-text {
            float: left;
            width: 150px;
            margin-left: 10px;
        }
    </style>
    <!-- 섹션 -->
    <style>
        /* 미디어 쿼리를 지원하지 않는 웹 브라우저 */
        #main-section {
            width: 920px;
            margin: 0 auto;
        }

        /* 3줄 */
        @media (max-width: 919px) {
            #main-section { width: 690px; }
        } 

        /* 4줄 */
        @media (min-width: 920px) and (max-width:1149px) {
            #main-section { width: 920px; }
        } 

        /* 5줄 */
        @media (min-width:1150px) and (max-width:1379px) {
            #main-section { width: 1150px; }
        }

        /* 6줄 */
        @media (min-width:1380px) {
            #main-section { width: 1380px; }
        }
    </style>
    <!-- 라이트박스 -->
    <style>
        #darken-background {
            position: absolute;
            top: 0; left: 0; right: 0;
            height: 100%; 

            display: none;
            background: rgba(0, 0, 0, 0.9);
            z-index: 10000;
            overflow-y: scroll;
        }

        #lightbox {
            width: 700px;
            margin: 20px auto; padding: 15px;

            border: 1px solid #333333;
            border-radius: 5px;
            background: white;
            box-shadow: 0 5px 5px rgba(34, 25, 25, 0.4);

            text-align: center;
        }

        .user-information {  overflow: hidden;  text-align: left; }
        .user-information-image { float: left; width: 70px; }
        .user-information-text { float: right; width: 620px;  }
        .lightbox-splitter { margin: 10px 0; }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <!--script src="./js/jquery.masonry.min.js"></script>
    <script src="./js/jquery.imagesloaded.min.js"></script>-->
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.js"></script>
    <script>
        // 풀다운 메뉴
        $(document).ready(function () {
            // 풀다운 메뉴
            $('.outer-menu').hover(function () {
                $(this).find('.inner-menu').css('display', 'block');
            }, function () {
                $(this).find('.inner-menu').css('display', 'none');
            });
        });

        // 페이지
        $(document).ready(function () {
            // 이미지 로드 확인
            $('#main-section').imagesLoaded(function () {
                // jQuery Masonry 플러그인 적용
                $('#main-section').masonry({
                    itemSelector: '.paper',
                    columnWidth: 230,
                    isAnimated: true
                });
            });
});
          
        
        // 라이트 박스
        $(document).ready(function () {
            function showLightBox() {
                // 라이트박스를 보이게 합니다.
                $('#darken-background').show();
                $('#darken-background').css('top', $(window).scrollTop());
                // 스크롤을 못하게 합니다.
                $('body').css('overflow', 'hidden');
            }

            function hideLightBox() {
                // 라이트박스를 안 보이게 합니다.
                $('#darken-background').hide();

                // 스크롤을 하게 합니다.
                $('body').css('overflow', '');
            }

            // 라이트박스 제거 이벤트
            $('#darken-background').click(function () {
                hideLightBox();
            });

              // 클릭 이벤트 연결
            $('.paper').click(function () {
                showLightBox();
            });

            // 라이트박스 제거 이벤트 보조
            $('#lightbox').click(function (event) {
                event.stopPropagation()
            });
        });
    </script>
</head> 
<body> 
    <!-- 헤더 --> 
    <header id="main-header"> 
        <div class="header-search-form"> 
            <form> 
                <input type="search" class="input-search" /> 
                <input type="submit" class="input-search-submit" value="검색" /> 
            </form> 
        </div> 
        <h1 class="header-title">Interest</h1> 
        <div class="header-menu"> 
            <ul class="outer-menu"> 
                <li> 
                    <a href="#">정보</a> 
                    <ul class="inner-menu"> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                    </ul> 
                </li> 
            </ul> 
            <ul class="outer-menu"> 
                <li> 
                    <a href="#">사용자</a> 
                    <ul class="inner-menu"> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                        <li><a href="#">데이터</a></li> 
                    </ul> 
                </li> 
            </ul> 
        </div> 
    </header> 
    <!-- 네비게이션 메뉴 --> 
    <nav id="main-navigation"> 
        <ul> 
            <li><a href="#">Following</a></li> 
            <li><a href="#">Categories</a></li> 
            <li><a href="#">Everything</a></li> 
            <li><a href="#">Popular</a></li> 
            <li><a href="#">Gift</a></li> 
        </ul> 
    </nav> 
    <!-- 본문 영역 --> 
    <section id="main-section"> 
<%       
     ImageRepository repository =  ImageRepository.getInstance();
	 List<KinnImage>  list =repository.getImageList();
	 for(KinnImage image:list){ %>
        <div class="paper"> 
            <div class="paper-holder"> 
                <a><img width="190" src="<%=image.getSrc()%>"/></a> 
            </div> 
            <p class="paper-description"><%=image.getDescription() %></p> 
            <div class="paper-content"> 
                <a class="paper-link" href="#"><img src="<%=image.getPaperLink() %>" /></a> 
                <p class="paper-text"><%=image.getPaperText() %></p> 
            </div> 
        </div>
    <%     
	 }          
%>         
    </section> 
    <!-- 라이트박스 --> 
    <div id="darken-background"> 
        <div id="lightbox"> 
            <div class="user-information"> 
                <a class="user-information-image" href="#">
                    <img src="http://placekitten.com/70/70" />
                </a> 
                <div class="user-information-text">
                    <h3>User</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna.</p>
                </div> 
            </div>
            <hr class="lightbox-splitter" />
            <img src="http://placekitten.com/600/750" /> 
        </div> 
    </div> 
</body> 
</html> 
