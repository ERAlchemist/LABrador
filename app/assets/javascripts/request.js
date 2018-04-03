/*$(function(){
    $('#show-complete').change(function() {
        alert(this.checked); 
        if(this.checked){
            $('#complete-list').html()
        } else {
            alert('jello')
        }
    });
    $('#show-incomplete').change(function() {
        alert(this.checked); 
        if(this.checked){
           $('#incomplete-list').html(<div id="incomplete-list">
           BIG OL BOOBIES!!!!
           </div>)
        } else {
            $('#incomplete-list').html(<div id="incomplete-list">
           BIG OL FAT TITTIES!!!!
            </div>)
        }
    });
})();*/
$(function(){ // If you are not familiar with jQuery, this will run when the page is loaded and ready
    $('#show-complete').click(function(){
      $('#complete-list').toggle(); // toggles all of the divs as hidden / shown
    });
    $('#show-incomplete').click(function(){
        $('#incomplete-list').toggle(); // toggles all of the divs as hidden / shown
      });
  })();
  $(function(){ // If you are not familiar with jQuery, this will run when the page is loaded and ready
   
  })();