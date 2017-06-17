$(document).ready(function() {

  // Each day a new quote!
  $.getJSON('http://quotes.rest/qod.json', function(data) {
    $('#thought > p').html(data.contents.quotes[0].quote);
  });

  // Easter egg: Click on the quote to change it!
   $('#thought').click(function() {
       $('#thought > p').text('Talk is cheap. Show me the code!');
   });

   // Can't read that tacky font I choose? Hover over!
    $('#thought').mouseenter(function() {
      $(this).css({'color': '#382772'});
    });
    $('#thought').mouseleave(function() {
      $(this).css({'color': '#336699'});
    });

});