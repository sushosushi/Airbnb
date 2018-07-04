//modal
$(function(){
  $('.create-account').click(function(){
    $('body').append('<div id="modal-back"></div>');

    //画面中央を計算する関数
    modalResize();

    //モーダルウィンドウ表示
      $('#modal-back, #modal-main').fadeIn('slow');

    //画面のどこかを押したらモーダルを閉じる
    $('#modal-back, #modal-main').click(function(){
      $('#modal-back, #modal-main').fadeOut('slow', function(){
        //挿入した<div id="modal-show"></div>を削除
          $('#modal-back').remove();
      });
    });
    ////画面の左上からmodal-mainの横幅・高さを引き、その値を2で割ると画面中央の位置が計算
    $(window).resize(modalResize);
      function modalResize(){
        var w = $(window).width;
        var h = $(window).height;

        var cw = $('#modal-main').outerWidth();
        var ch = $('#modal-main').outerHeight();
        //取得した値をCSSに追加する
        $('#modal-main').css({
          'left': ((w - cw) / 2) + 'px',
          'top': ((h - ch) / 2) + 'px'
        });
      }
  });
});
