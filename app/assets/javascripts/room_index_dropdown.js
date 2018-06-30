$(function() {
  $('.start-host__content').click(function() {
    $(this).children('ul').show();
    console.log('クリックされた！');
  });

  $('.start-host__content').hover(function() {
    over_flg = true;
    console.log('マウスが重なった！');
  }, function() {
    over_flg = false;
    console.log('マウスが離れた！');
  });

  $('body').click(function() {
    if(over_flg == false) {
      $('.host-submenu').hide();
    }
  });
});
