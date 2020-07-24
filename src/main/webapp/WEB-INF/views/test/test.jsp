<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>채팅</title>

<style>
#chatArea {
    width: 200px; height: 100px; overflow-y: auto; border: 1px solid black;
}
</style>
</head>
<body>
    이름:<input type="text" id="nickname">
    <input type="button" id="enterBtn" value="입장">
    <input type="button" id="exitBtn" value="나가기">
    
    <h1>대화 영역</h1>
    <div id="chatArea"><div id="chatMessageArea"></div></div>
    <br/>
    <input type="text" id="message">
    <input type="button" id="sendBtn" value="전송">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script type="text/javascript">
    
    // 웹소켓으로 쓸 변수 선언
    var wsocket;
    
    // 입장 버튼 클릭시 작동 함수
    function connect() {
        
        // 웹소켓 생성
        // 생성자에 관해서는 이전 포스팅 참고
        // 여기서는 이 페이지로 대화 내용을 보내는 것이므로 소켓 경로가 이 페이지(여기)이다
        wsocket = new WebSocket("ws://localhost:10000/a_finalproject3/echo.do");
        
        // 이렇듯 소켓을 생성하는 단계에서
        // .onopen, onmessage, onclose에 해당하는 함수를 정의
        wsocket.onopen = onOpen;
        wsocket.onmessage = onMessage;
        wsocket.onclose = onClose;
    }
    
    // 나가기 버튼 클릭시 작동 함수
    function disconnect() {
        wsocket.close();
    }
    
    /*
    위 connect()에서 wsocket.onopen을 이 함수로 이미 정의해뒀다는 것을 숙지.
    아래의 onMessage(), onClose()도 마찬가지로 connect()에서 정의해놨기 때문에
    작동되는 것이다.
    
    즉, wsocket.onopen = onOpen; => WebSocket 생성시 발동
        wsocket.onmessage = onMessage;  => 메시지 받으면 발동
        wsocket.onclose = onClose;  => WebSocket.close()시 발동
    
    ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  
    작동 시점은 "WebSocket 인터페이스의 연결 상태"가 변화했을 때이고
    리스너가 항상 기다리고 있다는 것을 숙지하자!!
    ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  ※  
    */
    
    // 소켓이 연결되면 자동으로 발동
    function onOpen(evt) {
        appendMessage("연결되었습니다.");
    }
    
    // "message" 이름의 MessageEvent 이벤트가 발생하면 처리할 핸들러
    // 이는 서버로부터 메세지가 도착했을 때 호출 
    function onMessage(evt) {
        var data = evt.data;
        if (data.substring(0, 4) == "msg:") {
            appendMessage(data.substring(4));
        }
    }
    
    // WebSocket 인터페이스의 연결상태가 readyState 에서 CLOSED 로 바뀌었을 때 호출 이벤트 리스너.
    // 이 이벤트 리스너는 "close"라는 이름의 CloseEvent를 받는다.
    function onClose(evt) {
        appendMessage("연결을 끊었습니다.");
    }
    
    // 전송 버튼 클릭시 발동
    function send() {
        
        var nickname = $("#nickname").val();
        var msg = $("#message").val();
        wsocket.send("msg:"+nickname+":" + msg);
        $("#message").val("");
    }

    // onMessage()에 내장된 함수로 받은 메세지를 채팅 내역에 추가시키는 기능을 한다.
    function appendMessage(msg) {
        
        // 메세지 입력창에 msg를 하고 줄바꿈 처리
        $("#chatMessageArea").append(msg+"<br>");
        
        // 채팅창의 heigth를 할당
        var chatAreaHeight = $("#chatArea").height();
        
        // 쌓인 메세지의 height에서 채팅창의 height를 뺀다
        // 이를 이용해서 바로 밑에서 스크롤바의 상단여백을 설정한다
        var maxScroll = $("#chatMessageArea").height() - chatAreaHeight;
        
        /* .scrollTop(int) : Set the current vertical position of the scroll bar
                             for each of the set of matched elements.*/
        // .scrollTop(int) : 파라미터로 들어간 px 만큼 top에 공백을 둔 채
        //                   스크롤바를 위치시킨다
        $("#chatArea").scrollTop(maxScroll);
    }

    $(document).ready(function() {
        
        // 메세지 입력창에 keypress 이벤트가 발생했을때 발동 함수
        // 키 하나하나 입력 하면 그때마다 발동된다
        $('#message').keypress(function(event){
            

       if(keycode == '13'){
                send(); 
            }
            
            // 만일의 경우를 대비하여 이벤트 발생 범위를 한정
    // http://ismydream.tistory.com/98 참고
            event.stopPropagation();
        });
        $('#sendBtn').click(function() { send(); });
        $('#enterBtn').click(function() { connect(); });
        $('#exitBtn').click(function() { disconnect(); });
    });
</script>

</body>
</html>