document.addEventListener('DOMContentLoaded', function(){
  const imageList = document.getElementById('image-list');
  document.getElementById('item_image').addEventListener('change', function(e){
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
  });
});