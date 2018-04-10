
$(function(){ // If you are not familiar with jQuery, this will run when the page is loaded and ready
    $('#show-complete').click(function(){
       
      $('#complete-list').toggle(); // toggles all of the divs as hidden / shown
    });
    $('#show-incomplete').click(function(){
        $('#incomplete-list').toggle(); // toggles all of the divs as hidden / shown
      });
    $('#new-request').click(function(){
        UIkit.notification({
            message: 'New Sample Request Added!',
            status: 'primary',
            pos: 'bottom-right',
            timeout: 5000
        });
    });
  })();

