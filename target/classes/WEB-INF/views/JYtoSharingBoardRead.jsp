<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="includeJSP.jsp"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>!!!!!!!!!!!!!!!!!!제목 불러오는 기능 찾아보기 ::당근나라!!!!!!!!!!!!!!!</title>
<link rel="stylesheet" href="css/common.css" />
<script src="javascript/common.js" defer></script>
<script src="https://kit.fontawesome.com/797af710b1.js"
	crossorigin="anonymous" defer></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
	defer></script>
<link rel="shortcut icon" type="image/x-icon"
	href="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcz9VUi%2FbtqJt0b2VUe%2FiiBIEnDkufPInk4hKsunE1%2Fimg.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap"
	rel="stylesheet" />
</head>

<body>
	<!-- 게시글 보기는 위 head에 title도 글제목으로 불러와주세요 -->
	<!-- 메뉴 고정바 -->
	<header class="header">
	<div class="header__fixed-bar">
		<section class="header__fixed-bar-logo section-logo"> <a
			href="../main/main.html"> <img
			src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FSQxEt%2FbtqJs5kkQnP%2FhvX1kh8aeqli9J93tF5qV1%2Ftfile.svg"
			alt="당근나라" />
		</a> </section>
		<section class="header__fixed-bar-search section-search">
		<div class="header__fixed-bar-search-container" tabindex="4">
			<input class="search-input" type="text"
				placeholder="동네 이름, 물품명 등을 검색해보세요!" /> <input
				type="image" class="search-icon"
				src="https://img.icons8.com/ios-glyphs/30/000000/search.png" />
		</div>
		<!-- 검색시 검색창 밑에 뜨는 키워드 추천란 입니다 -->
		<div class="search-keyword">
			<span class="keyword-title">추천</span> <span class="keyword-contnet">
				<a href="#none">분당 유모차</a> <a href="#none">키즈카페</a> <a href="#none">화분</a>
				<a href="#none">강남 명품가방</a> <a href="#none">잠실 냉장고</a> <a
				href="#none">인천 마우스</a>
			</span>
		</div>
		<!-- 5~6개 정도 표시해주면 될듯합니다 --> </section>
		<section class="header__fixed-bar-nav section-nav"> <nav
			class="header__fixed-bar-nav-container">
		<ul class="header__fixed-bar-nav-list nav-list">
			<li class="nav-list-content"><a href="../member/join.html">회원가입</a>
			</li>
			<li class="nav-list-content"><a href="../member/login.html">로그인</a>
			</li>
			<li class="nav-list-content"><a href="#">지도로 보기</a></li>
		</ul>
		</nav> </section>
	</div>
	</header>
	<!-- 메뉴 목록 리스트 -->
	<aside class="fixed__list">
	<ul>
		<li><a href="JYnoticeBoard.do">공지사항</a></li>
		<li><a href="blackListBoard.html">검거완료 !</a></li>
		<li><a href="badReviewBoard.html">불량거래 후기</a></li>
		<li><a href="toSaleBoard.html">판매중 이에요.</a></li>
		<li><a href="JYtoSharingBoard.do">나눔중 이에요.</a></li>
		<li><a href="toBuyBoard.html">구매합니다 ~!</a></li>
	</ul>
	</aside>
	
	
	<!-- 섹션 시작 -->
	<article class="article">
	<div class="article__sharing-board-read">
		<div class="silder-container">
			<div class="slider">
				<div class="slide showing">
					<img
						src="data:image/jpeg;base64,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"
						alt="이미지1" />
				</div>
				<div class="slide">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCitEjJ8125NcOUnkZyPRf711mPTxLnP6a6g&usqp=CAU"
						alt="이미지2" />
				</div>
				<div class="slide">
					<img src="https://pbs.twimg.com/media/DtEUNKNVAAE2rzu.jpg"
						alt="이미지3" />
				</div>
				<div class="slide">
					<img
						src="https://i.ytimg.com/vi/bQSk7z5EW5E/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAfC2oEn9CREQ0FnRzXF18xOb-Mcg"
						alt="이미지4" />
				</div>
				<div class="slide">
					<img
						src="https://www.topstarnews.net/news/photo/202008/825560_548963_2442.jpg"
						alt="이미지5" />
				</div>
				<div class="left btns" onclick="left_move();">
					<i class="fas fa-chevron-left"></i>
				</div>
				<div class="right btns" onclick="right_move();">
					<i class="fas fa-chevron-right"></i>
				</div>
			</div>
		</div>
		<div class="sharing-board-read__info-container">
			<div class="sharing-board-read__info">
				<a href="#none">
				<div class="sharing-board-read__name">${jyPost.mNick }</div></a> <!-- 닉네임  -->
				<p class="sharing-board-read__address">${jyPost.mAddr }</p> 		<!-- 주소  -->
			</div>
			<div class="sharing-board-read__sweet-cotainer">
				<div class="sharing-board-read__sweet sweet-cotainer"></div>
				<div class="sharing-board-read__text">당도</div>	<!-- 당도 -->
			</div>
		</div>
		<div class="sharing-board-read__content">
			<h1 class="sharing-board-read__content--title">${jyPost.pTitle }</h1>
			<div class="sharing-board-read__content--detail">
				<!-- 실제 게시글에 등록된 주소, 카테고리 -->
				<span>${jyPost.mAddr }
					<div class="vertical"></div> ${jyPost.ctKinds } <!-- 카테고리종류 -->
					<div class="vertical" name ="pStatus"></div> ${jyPost.pStatus }
				</span>
			</div>
			<div class="sharing-board-read__content--price"></div>
			<div class="sharing-board-read__content--article">
				${jyPost.pContent }<!-- 게시글 내용  -->
			</div>
		  	<div class="sharing-board-read__content--hits">
                        <fmt:parseDate var="pDate" value="${jyPost.pDate}" pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:formatDate value="${pDate}" pattern="yyyy-MM-dd" /> · 조회수 ${jyPost.pHit }
            </div>
			<div class="sharing-board-read__content--counts picks-container">
				<img class="picks-ico"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4Igp3aWR0aD0iMjYiIGhlaWdodD0iMjYiCnZpZXdCb3g9IjAgMCAxNzIgMTcyIgpzdHlsZT0iIGZpbGw6IzAwMDAwMDsiPjxnIHRyYW5zZm9ybT0iIj48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9Im5vbnplcm8iIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBzdHJva2UtZGFzaGFycmF5PSIiIHN0cm9rZS1kYXNob2Zmc2V0PSIwIiBmb250LWZhbWlseT0ibm9uZSIgZm9udC13ZWlnaHQ9Im5vbmUiIGZvbnQtc2l6ZT0ibm9uZSIgdGV4dC1hbmNob3I9Im5vbmUiIHN0eWxlPSJtaXgtYmxlbmQtbW9kZTogbm9ybWFsIj48cGF0aCBkPSJNMCwxNzJ2LTE3MmgxNzJ2MTcyeiIgZmlsbD0ibm9uZSI+PC9wYXRoPjxnIGZpbGw9IiMwMDAwMDAiPjxwYXRoIGQ9Ik01MS4wNjI1LDI2Ljg3NWMtMjIuMjM0ODYsMCAtNDAuMzEyNSwxOC4yODc2IC00MC4zMTI1LDQwLjMxMjVjMCw3LjY4NDU3IDMuNDg1MzUsMTQuMzQwMzMgNi43MTg3NSwxOS4xNDg0NGMzLjIzMzQsNC44MDgxIDYuNTUwNzgsNy44OTQ1MyA2LjU1MDc4LDcuODk0NTNsNTguMTE3MTksNTguMjg1MTZsMy44NjMyOCwzLjg2MzI4bDMuODYzMjgsLTMuODYzMjhsNTguMTE3MTksLTU4LjI4NTE2YzAsMCAxMy4yNjk1MywtMTEuNjk0ODIgMTMuMjY5NTMsLTI3LjA0Mjk3YzAsLTIyLjAyNDkgLTE4LjA3NzY0LC00MC4zMTI1IC00MC4zMTI1LC00MC4zMTI1Yy0xOC40NTU1NywwIC0zMC4zMzkzNSwxMS4xMDY5MyAtMzQuOTM3NSwxNS43ODkwNmMtNC41OTgxNSwtNC42ODIxMyAtMTYuNDgxOTMsLTE1Ljc4OTA2IC0zNC45Mzc1LC0xNS43ODkwNnpNNTEuMDYyNSwzNy42MjVjMTYuMDYyMDEsMCAzMC45MDYyNSwxNS42MjEwOSAzMC45MDYyNSwxNS42MjEwOWw0LjAzMTI1LDQuNTM1MTZsNC4wMzEyNSwtNC41MzUxNmMwLDAgMTQuODQ0MjQsLTE1LjYyMTA5IDMwLjkwNjI1LC0xNS42MjEwOWMxNi4zNTU5NiwwIDI5LjU2MjUsMTMuNDE2NTEgMjkuNTYyNSwyOS41NjI1YzAsOC4yOTM0NiAtMTAuMDc4MTIsMTkuNDg0MzggLTEwLjA3ODEyLDE5LjQ4NDM4bC01NC40MjE4Nyw1NC40MjE4OGwtNTQuNDIxODcsLTU0LjQyMTg3YzAsMCAtMi42MDM1MiwtMi40OTg1NCAtNS4yMDcwMywtNi4zODI4MWMtMi42MDM1MiwtMy44ODQyOCAtNC44NzEwOSwtOC45NDQzMyAtNC44NzEwOSwtMTMuMTAxNTZjMCwtMTYuMTQ1OTkgMTMuMjA2NTQsLTI5LjU2MjUgMjkuNTYyNSwtMjkuNTYyNXoiPjwvcGF0aD48L2c+PC9nPjwvZz48L3N2Zz4="
					alt="picks" />
			</div>
		</div>
		<div class="sharing-board-read__btn-container">
			<a href="JYtoSharingBoard.do">
			<div class="sharing-board-read__list list-btn">목록</div></a> 
			
			<a href="deleteSharing.do?bId=${jyPost.bId}&pNum=${jyPost.pNum}">
			<input class="sharing-board-read__delete" type="button" value="삭제" /></a>
			
			<a href="JYtoSharingBoardUpdate.do?bId=${jyPost.bId}&pNum=${jyPost.pNum}">
			<input class="sharing-board-read__update" type="button" value="수정" /></a>
			
		</div>
	</div>
	</article>
	
	
	
	<!-- 하단 카피라이트 -->
	<footer class="footer">
	<div class="footer-container">
		<div class="footer-top">
			<div class="footer-top-logo"></div>
			<ul class="footer-top-list">
				<li class="footer-top-list-content"><a
					href="https://www.daangn.com/trust">믿을
						수 있는 중고거래</a></li>
				<li class="footer-top-list-content"><a
					href="https://www.daangn.com/wv/faqs"> 자주 묻는 질문</a></li>
			</ul>
			<ul class="footer-top-list">
				<li class="footer-top-list-content"><a
					href="https://www.notion.so/3d0197c137ec43d18ff739b5b254a3c8/">
						회사 소개 </a></li>
				<li class="footer-top-list-content"><a
					href="https://ad.daangn.com/"> 광고주센터 </a></li>
				<li class="footer-top-list-content"><a
					href="https://town.daangn.com/"> 동네가게 </a></li>
			</ul>
			<ul class="footer-top-list">
				<li class="footer-top-list-content"><a
					href="https://www.daangn.com/policy/terms"> 이용약관 </a></li>
				<li class="footer-top-list-content"><a
					href="https://www.daangn.com/policy/privacy"> 개인정보 취급방침 </a></li>
				<li class="footer-top-list-content"><a
					href="https://www.daangn.com/policy/location"> 위치기반서비스 이용약관 </a></li>
			</ul>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottom-copyright">
				<ul class="footer-bottom-list-container">
					<li class="footer-bottom-list-conent">
						<address>고객문의 cs@daangnservice.com</address>
						<address>제휴문의 contact@daangn.com</address>
					</li>
					<li class="footer-bottom-list-conent">
						<address>사업자 등록번호 : 375-87-000-88</address>
						<address>서울특별시 구로구 디지털로 30길 28 609호</address>
					</li>
					<li class="footer-bottom-list-conent">©Danggeun Market Inc.</li>
				</ul>
			</div>
			<div class="footer-bottom-sns">
				<ul class="footer-bottom-sns-container">
					<li class="sns-icon"><a href="https://www.facebook.com/daangn">
							<img
							src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-facebook-0563f4a93852d073b41f13b8bcabb03d47af3bb3a6755cdfedd8a73686c7f18c.svg" />
					</a></li>
					<li class="sns-icon"><a
						href="https://www.instagram.com/daangnmarket/">
							<img
							src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-instagram-2f6c88a461597907c114b7ce28eab053fcae791ed26417915fefb6f7c9f95756.svg" />
					</a></li>
					<li class="sns-icon"><a href="https://blog.naver.com/daangn">
							<img
							src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-blog-e1b0d512d1766a6962ec5bbb5b0803d2a6a9c55ad97db5ba9eebb76013caceba.svg" />
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	</footer>
</body>
</html>
