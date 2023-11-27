<%--
  Created by IntelliJ IDEA.
  User: janghojin
  Date: 2023/11/22
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>이벤트 등록</title>
    <link rel="stylesheet" href="../../../resources/css/admin/event.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/admin/header.jsp"/>
flush="false"/>

<jsp:include page="/WEB-INF/views/common/admin/navigation.jsp"/>
flush="false"/>

<jsp:include page="/WEB-INF/views/common/admin/footer.jsp"/>
flush="false"/>

<div class="content">
    <h3 style="color:indianred;">이벤트 등록</h3>
    <form action='/event/write' method='post'><input type='hidden' value='${eventDto.event_id}'>
        <h5 class="content-input__type">이벤트 제목</h5>
        <input name="event_title" type="text" style="width: 50%;">
        <h5 class="content-input__type">이벤트 내용</h5>
        <textarea name="event_ctt"
                  style="white-space:pre; width:70%; height: 300px; overflow: scroll;"></textarea>
        <div class="content-input-div">
            <h5 class="content-input__type">이벤트 상태</h5>
            <select name="status_id">
                <option value="E01">준비중</option>
                <option value="E02">진행중</option>
                <option value="E03">종료</option>
            </select>
            <h5 class="content-input__type">공개여부</h5>
            <input name="event_is_open" type="radio" class="content-input-div__radio" value="N" checked>비공개
            <input name="event_is_open" type="radio" class="content-input-div__radio" value="Y">공개
            <h5 class="content-input__type">이벤트 시작일</h5>
            <input name="event_start_date" type="date" class="content-input__date" min="${startOfToday}">
            <h5 class="content-input__type">이벤트 종료일</h5>
            <input name="event_expire_date" type="date" class="content-input__date">
            <h5>첨부파일(이미지)</h5>
            <input type="file"
                   style="position: absolute; margin-top: -15px; background-color: transparent">
        </div>
        <button class='content-bottom__btn__submit' type='submit'>등록</button>
    </form>
</div>

</body>
</html>