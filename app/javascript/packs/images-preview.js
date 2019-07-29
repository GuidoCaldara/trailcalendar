import Cropper from "cropperjs"


function showImagePreview(e, img){
  var reader = new FileReader();
  reader.onload = function(){
    var output = document.getElementById(img);
    output.src = reader.result;
  };
  reader.readAsDataURL(event.target.files[0]);
  
}



export { showImagePreview }