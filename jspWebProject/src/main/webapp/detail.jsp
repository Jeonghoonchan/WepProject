<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Connect.JDBCConnection"  %>
<%@ page import="DTO.ShopDTO" %>
<%@ page import="DAO.ShopDAO" %>
<%
	request.setCharacterEncoding( "UTF-8" );
	// web.xml에서 가져온 DB 연결 정보
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String passwd = application.getInitParameter("OraclePasswd");
	//String shopname = request.getParameter("shopname");
	String shopname = request.getParameter("shopname");
	// 테이블 DAO를 통해 DTO로 회원정보 획득
	ShopDAO dao = new ShopDAO(driver, url, id, passwd);
	ShopDTO dto = dao.getShopDTODetail(shopname);
	
	if(dto.getShopname() != null) {
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title> 

<link rel="stylesheet" href="DefaultScreenCSS.css">
</head>
<body>
  <div id="wrap">
    <figure>
      <img class="detaillogo" src="img/<%=dto.getImage() %>"/>
    </figure>
    <!-- 상세 메인 메뉴 선택 -->
      <div class="detail_Main">
        <div class="detail_DetailView">
          <p style="font-weight: bold;">영업 정보</p>
          <div class="detail_Menu_Content">
            <p class="detail_Tag">상호명 </p>
            <p class="detail_Text"><%=dto.getShopname() %></p>
          </div>
          <div class="detail_Menu_Content">
            <p class="detail_Tag">연락처 </p>
            <p class="detail_Text"><%=dto.getPhone() %></p>
          </div>
          <div class="detail_Menu_Content">
            <p class="detail_Tag">상세주소 </p>
            <p class="detail_Text"><%=dto.getAddress() %></p>
          </div>
        </div>
        <div class="detail_MainMenu">
          <p class="detail_MainMenu_Tag">대표메뉴</p>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dto.getManuimage1() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%=dto.getManu1() %></p>
          </div>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dto.getManuimage2() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%=dto.getManu2() %></p>
          </div>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dto.getManuimage3() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%=dto.getManu3() %></p>
          </div>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dto.getManuimage4() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%=dto.getManu4() %></p>
          </div>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dto.getManuimage5() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%=dto.getManu5() %></p>
          </div>
        </div>
      </div>
    <div id="divLink">
      <div class="LinkList" Onclick="location.href='main.html'">지도로 이동하기</div>
    </div>
  </div>
</body>
</html>

<%	}
	else {
		out.println("잘못된 연결입니다.");
	}
	
	dao.close(); %>