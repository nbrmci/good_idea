document.addEventListener('DOMContentLoaded', function(){
  const imageList = document.getElementById('image-list');
  document.getElementById('item_image').addEventListener('change', function(e){
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    const imageElement = document.createElement('div');
    const blobImage = document.createElement('img');
    blobImage.setAttribute('src', blob);
  });
});