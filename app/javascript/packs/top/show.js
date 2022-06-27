
$(function(){
  $('#colorPicker').on('change', function(e){
    var color = e.detail[0];
    $(this).val(color);
    console.log("picked color : ", color);
  });
});

let fill4 = document.getElementById('fill4');
fill4.value = "#00F000";
fill4.addEventListener('change', function(){
  fill4.style.background = this.value;
});

let fill5 = document.getElementById('fill5');
fill5.value = "#00F000";
fill5.addEventListener('change', function(){
  fill5.style.background = this.value;
});

let fill6 = document.getElementById('fill6');
fill6.value = "#00F000";
fill6.addEventListener('change', function(){
  fill6.style.background = this.value;
});

