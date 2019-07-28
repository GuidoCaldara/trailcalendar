function showImagePreview(e, img){
  console.log(img);
  
  var reader = new FileReader();
  reader.onload = function(){
    var output = document.getElementById(img);
    output.src = reader.result;
  };
  reader.readAsDataURL(event.target.files[0]);
}


export { showImagePreview }