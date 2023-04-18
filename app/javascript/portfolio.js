let set_positions;

set_positions = function() {
  $('.card').each(function(i) {
    $(this).attr('data-pos', i + 1);
  });
};

function ready() {
  set_positions();
  $('.sortable').sortable();
  $('.sortable').sortable().on('sortupdate', function() {
    let updated_order;
    updated_order = [];
    set_positions();
    $('.col').each(function(i) {
      updated_order.push({
        id: $(this).data('id'),
        position: i + 1
      });
    });
    $.ajax({
      method: 'PUT',
      url: '/portfolios/sort',
      data: {
        order: updated_order
      }
    });
  });
}

$(function() {
  ready();
});
