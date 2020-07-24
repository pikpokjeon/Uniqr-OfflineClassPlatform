// const count;
// 강의스케쥴


$(function () {
  $('#taskBtn').click(function () {
    const newTask = $('#taskInputText').val();

    if (newTask !== '') {
      const count = $('#taskListSection').children().length + 1;
      $('#taskListSection').append(
        '<li class="list-group-item bg-info" id="pain' + count + '">' +
        '<input ' + ' name="sschedule' +
        count + '" value="' +

        newTask +
        '">' +
        '<button type="button" class="btn btn-outline-info delete"id="deleteBttn' +
        count + '">X</button ></li>'
      );

      $('#taskInputText').val('');

      $('.delete').css({
        float: 'right',
        padding: '2px 10px',
      });

      deleteBttn(count);
      console.log('지우는 이벤트 호출')


      setTimeout(function () {
        $('#taskListSection li.bg-info').removeClass('bg-info');
      }, 1000);
    } else {
      alert('내용을 입력해주세요');
    }
  });
});



function deleteBttn(count) {

  $('#deleteBttn' + count).click(function () {
    $('#pain' + count).remove();


  });

}

// 배울내용

$(function () {
  $('#taskBtn2').click(function () {
    const newTask = $('#taskInputText2').val();

    if (newTask !== '') {
      const count = $('#taskListSection2').children().length + 1;

      $('#taskListSection2').append(
        '<li class="list-group-item bg-info" id="painn' + count + '">' +
        '<input ' + 'name="scontent' +
        count + '" value="' +

        newTask +
        '">' +
        '<button type="button" class="btn btn-outline-info delete"id="deleteBttn' +
        count + '">X</button ></li>'
      );

      $('#taskInputText2').val('');

      $('.delete').css({
        float: 'right',
        padding: '2px 10px',
      });

      deleteBttn1(count);
      console.log('지우는 이벤트 호출')

      setTimeout(function () {
        $('#taskListSection2 li.bg-info').removeClass('bg-info');
      }, 1000);
    } else {
      alert('내용을 입력해주세요');
    }
  });
});


function deleteBttn1(count) {

  $('#deleteBttn' + count).click(function () {
    $('#painn' + count).remove();


  });

}
// 강의대상

$(function () {
  $('#taskBtn3').click(function () {
    const newTask = $('#taskInputText3').val();

    if (newTask !== '') {
      const count = $('#taskListSection3').children().length + 1;

      $('#taskListSection3').append(
        '<li class="list-group-item bg-info" id="painnn' + count + '">' +
        '<input ' + 'name="starget' +
        count + '" value="' +

        newTask +
        '">' +
        '<button type="button" class="btn btn-outline-info delete"id="deleteBttn' +
        count + '">X</button ></li>'
      );

      $('#taskInputText3').val('');
      $('.delete').css({
        float: 'right',
        padding: '2px 10px',
      });



      deleteBttn2(count);
      console.log('지우는 이벤트 호출')

      setTimeout(function () {
        $('#taskListSection3 li.bg-info').removeClass('bg-info');
      }, 1000);
    } else {
      alert('내용을 입력해주세요');
    }
  });
});


function deleteBttn2(count) {

  $('#deleteBttn' + count).click(function () {
    $('#painnn' + count).remove();


  });

}

// 요구사항

$(function () {
  $('#taskBtn4').click(function () {
    const newTask = $('#taskInputText4').val();

    if (newTask !== '') {
      const count = $('#taskListSection4').children().length + 1;

      $('#taskListSection4').append(
        '<li class="list-group-item bg-info" id="painnnn' + count + '">' +
        '<input ' + 'name="sclaim' +
        count + '" value="' +

        newTask +
        '">' +
        '<button type="button" class="btn btn-outline-info delete"id="deleteBttn' +
        count + '">X</button ></li>'
      );

      $('#taskInputText4').val('');
      $('.delete').css({
        float: 'right',
        padding: '2px 10px',
      });



      deleteBttn3(count);
      console.log('지우는 이벤트 호출')

      setTimeout(function () {
        $('#taskListSection4 li.bg-info').removeClass('bg-info');
      }, 1000);
    } else {
      alert('내용을 입력해주세요');
    }
  });
});


function deleteBttn3(count) {

  $('#deleteBttn' + count).click(function () {
    $('#painnnn' + count).remove();


  });

}

// 강의목차

$(function () {
  $('#taskBtn5').click(function () {
    const newTask = $('#taskInputText5').val();
    const newDesc = $('#descText').val();

    if (newTask !== '' && newDesc !== '') {
      const count = $('#taskListSection5').children().length + 1;

      $('#taskListSection5').append(
        '<li class=" deletetask5 bg-info"  id="painOfLife' + count + '">' +
        '  <div class="card-header">' +
        '<input name="smoc' +
        count +
        '" value="' +
        newTask +
        '">' +
        '<button type="button" class="btn btn-outline-info delete"id="deleteBttn' +
        count + '">X</button > ' +
        '</div>' +
        ' <div class="card-body">' +
        '<div class="listdesc">' + '<input name="smocin' + count + '" value="' +
        newDesc + '">' +
        '</div> </div> </li>'
      );

      $('#taskInputText5').val('');
      $('#descText').val('');

      $('.delete').css({
        float: 'right',
        padding: '2px 10px',
      });

      deleteBttn4(count);

      setTimeout(function () {
        $('#taskListSection5 li.bg-info').removeClass('bg-info');
      }, 1000);
    } else {
      alert('내용을 입력해주세요');
    }
  });
});

function deleteBttn4(count) {

  $('#deleteBttn' + count).click(function () {
    $('#painOfLife' + count).remove();


  });

}

// 이미지업로드미리보기-썸네일
function readURL(input) {
  if (input.files && input.files[0]) {
    const reader = new FileReader();

    reader.onload = function (e) {
      $('#imgpreview').attr('src', e.target.result);
    };

    reader.readAsDataURL(input.files[0]); // convert to base64 string
  }
}

$('#thumbimg').change(function () {
  readURL(this);
});

// 이미지업로드미리보기-첨부이미지
function readURL2(input) {
  if (input.files && input.files[0]) {
    const reader2 = new FileReader();

    reader2.onload = function (e) {
      $('#imgpreview2').attr('src', e.target.result);
    };

    reader2.readAsDataURL(input.files[0]); // convert to base64 string
  }
}

$('#addimg').change(function () {
  readURL2(this);
});