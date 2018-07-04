$(function() {
  $('.start-host__content').click(function() {
    $(this).children('ul').show();
  });

  $('.start-host__content').hover(function() {
    over_flg = true;
  }, function() {
    over_flg = false;
  });

  $('body').click(function() {
    if(over_flg == false) {
      $('.host-submenu').hide();
    }
  });
});
