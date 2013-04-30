
$(document).ready(function() {
    var count = 0;
    $('button').on('click', function() {
        count += 1;
        var itemOrder = 'item' + 1;
        var itemValue = $('#inputValue').val();
        var listItem = $('<li></li>', {id: itemOrder}).appendTo('#list-one').text(itemValue);
        var markCompleted = $('<button></button>', {id: itemOrder}).appendTo('#list-one').text('Completed');
        $('#item' + count).on('click', function() {
            $(listItem).appendTo('#list-two');

        });
        var removeItem = $('<button></button>', {id: itemOrder}).text('Remove');
        $('#item' + count).on('click', function() {
            $(listItem).remove();
        });
        //var remove = $('#item' + count).on
        //li.on('click', function() {
            //var listItem = $(this);
            //listItem.css('color', 'red');
        //});
        var l = $('#todo li').length;
    });

				
});