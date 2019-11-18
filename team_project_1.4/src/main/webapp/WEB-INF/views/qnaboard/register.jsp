<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication var="member" property="principal.member"/>
</sec:authorize>
<div id="container">
	<!-- location_area -->
	<div class="location_area ticket">
		<div class="box_inner">
			<h2 class="tit_page">부산 맛집</h2>
			<p class="location">QnA <span class="path">/</span> 문의하기</p>
			<ul class="page_menu clear">
				<li><a href="javascript:;" class="on">문의하기</a></li>
			</ul>
		</div>
	</div>	
	<!-- //location_area -->
	<!-- bodytext_area -->
	<div class="bodytext_area box_inner">
		<!-- appForm -->
		<form action="/qnaboard/register" id="registForm" class="appForm" method="post" name="registForm" enctype="multipart/form-data">
			<input type="hidden" name="u_no" value="${member.u_no}">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<fieldset>
				<legend>공지사항 입력 양식</legend>
				<p class="info_notice">문의 글쓰기</p>
				<ul class="app_list">
					<li class="clear">
						<label for="title_lbl" class="tit_lbl">제목</label>
						<div class="app_content">
							<input type="text" name="title" class="w100p" id="title_lbl" placeholder="제목을 입력해주세요" required/>
						</div>
					</li>
					<li class="clear">
						<label for="writer_lbl" class="tit_lbl">글쓴이&ensp;/&ensp;비밀번호</label>
						<div class="app_content">
							<input type="text" name="writer" class="w30p" id="writer_lbl" value="${member.u_name}" readonly/>
							<!-- <input type="checkbox" class="css-checkbox" id="secret" checked="checked" disabled/>
							<label for="secret">비밀글</label> -->
							<input type="password" name="password" class="w30p" id="password_lbl" placeholder="비밀번호를 입력해주세요" required/>
						</div>
					</li>
					<!-- <li class="clear">
						<label for="name_lbl" class="tit_lbl">비밀번호</label>
						<div class="app_content">
							<input type="password" name="password" class="w30p" id="password_lbl" placeholder="비밀번호를 입력해주세요" required/>
						</div>
					</li> -->
					<li class="clear">
						<label for="content_lbl" class="tit_lbl">내용</label>
						<div class="app_content"><textarea id="content_lbl" name="content" class="w100p" placeholder="내용을 작성해주세요" required></textarea></div>
					</li>
					<li class="clear">
						<label for="name_lbl" class="tit_lbl">첨부파일</label>
						<div class="app_content"><input type="file" id="attach_lbl" name="files" multiple/></div>
					</li>
				</ul>
				<p class="btn_line">
					<!-- <a href="#"  id="submit_lbl" class="btn_baseColor">등록</a> -->
					<button type="submit" class="btn_baseColor" name="submit">등록</button>
				</p>	
			</fieldset>
		</form>
		<!-- //appForm -->
		
	</div>
	<!-- //bodytext_area -->

</div>
<!-- //container -->

<script>
	/* $("#submit_lbl").click(function(event){
		event.preventDefault();
		$("#registForm").submit();
	}); */
	 
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>