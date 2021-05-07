$(document).ready(function () {
    // 회원가입 -> 주소 검색 눌렀을 때
    $('#address-pop').click(function(e) {
        new daum.Postcode({
          oncomplete: function(data) {
              var addr = ''; // 주소 변수
              if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                  addr = data.roadAddress;
              } else { // 사용자가 지번 주소를 선택했을 경우(J)
                  addr = data.jibunAddress;
              }
              $('#address-pop').attr('style', 'display: none');
              $('#address').attr('style', 'display: block');
              $('#address').val(addr);
              $('#address-detail').focus();
          }
        }).open();
    });

    $('#all-select').click(function (e) { 
        if($('.user-select input').attr('checked') == 'checked'){
            $('.user-select input').attr('checked', false)
        } else{
            $('.user-select input').attr('checked', true)
        }
    });
});