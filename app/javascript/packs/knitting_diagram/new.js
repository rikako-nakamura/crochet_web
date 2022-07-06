
$(function(){
  $('#colorPicker').on('change', function(e){
    var color = e.detail[0];
    $(this).val(color);
    console.log("picked color : ", color);
  });
});

let square_outer = document.getElementById('square_outer');
square_outer.value = "#92b5a9";
square_outer.addEventListener('change', function(){
  square_outer.style.background = this.value;
});

let square_center = document.getElementById('square_center');
square_center.value = "#e8d3d1";
square_center.addEventListener('change', function(){
  square_center.style.background = this.value;
});

let square_inner = document.getElementById('square_inner');
square_inner.value = "#f6b894";
square_inner.addEventListener('change', function(){
  square_inner.style.background = this.value;
});

