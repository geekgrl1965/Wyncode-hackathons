
$(document).ready(function(){
    function sendMessage(){
      var text = $('textarea#new-message-body').val();
      var msgTemplate = ['<li class="message">',
        "<a class='delete' href='#'>Delete</a>",
        '<h3 class="author">Me</h3>',
        '<p class="message-body">'+text+'</p>',
        '<span class="timestamp">01:12</span>',
        '</li>'].join('');
        $('#conversation').append(msgTemplate);
        $('#new-message-body').val('');
      };

    // listen for click on send button
        $('#new-message-button').click(sendMessage);

        $('#new-message-body').keypress(function(e){
          if(e.keyCode == 13){
          sendMessage();
      }

        $('#conversation').on('click', '.delete')
 

    });
});
