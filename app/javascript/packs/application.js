import 'bootstrap';
import { showImagePreview }  from "./images-preview.js"
import { triggerAlerts }  from "../components/alerts"
import { placesAutocomplete }  from "../components/places_autocomplete"
import Cropper from "cropperjs"

const image = document.getElementById('cover-image-prewiew');

//Trigger Alerts
const alertBox = document.querySelector("#alertBox")
alertBox && triggerAlerts(alertBox)

// Trigger places autocomplete
const organisationLocationInput = document.querySelector('#organisation_location')
const raceLocationInput = document.querySelector('#race_location')
if (organisationLocationInput || raceLocationInput){
    placesAutocomplete(organisationLocationInput, raceLocationInput)
}




//Image Preview
const logoInput = document.querySelector("#organisation_logo");
const coverImagePrewiew = document.querySelector("#race_cover_picture");
const dPreview = showImagePreview
logoInput && logoInput.addEventListener("change", (e) =>{ dPreview(e,"logo-prewiew" )})
coverImagePrewiew && coverImagePrewiew.addEventListener("change", (e) => { 
    dPreview(e,"cover-image-prewiew" )
})

const img = document.querySelector("#cover-image-prewiew")
img.addEventListener("load", (e)=>{
const image = e.target
$('#imagePreviewModal').modal('toggle')
$('#imagePreviewModal').on('shown.bs.modal	', function (e) {
    const width =  (document.querySelector("#previewImgBody").offsetWidth - 62)
    console.log(width)
    let cropper = new Cropper(image , {
      aspectRatio: 16 / 9,
      rotatable: false,
      scalable: false,
      
      crop(event) {
        console.log(event.detail.x);
        console.log(event.detail.y);
        console.log(event.detail.width);
        console.log(event.detail.height);
      },
    });

    document.querySelector("#closeCropper").addEventListener("click", () =>{
        cropper.destroy()
    })
    // do something...
  })
})