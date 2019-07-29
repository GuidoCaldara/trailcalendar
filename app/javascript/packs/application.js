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

const confirmCrop = document.querySelector("#confirm-crop")
const img = document.querySelector("#cover-image-prewiew")
const xOffset = document.querySelector("#xoffset")
const yOffset = document.querySelector("#yoffset")
const imgWidth = document.querySelector("#img-width")
const imgHeight = document.querySelector("#img-height")
img && img.addEventListener("load", (e)=>{
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
        xOffset.value = Math.floor(event.detail.x)
        yOffset.value = Math.floor(event.detail.y)
        imgWidth.value = Math.floor(event.detail.width)
        imgHeight.value = Math.floor(event.detail.height)
        console.log(xOffset.value)
        console.log(xOffset.value)
        console.log(imgWidth.value)
        console.log(imgHeight.value)

      },
    })

    document.querySelector("#closeCropper").addEventListener("click", () =>{
        cropper.destroy()
    })
    confirmCrop.addEventListener("click", () =>{
        $('#imagePreviewModal').modal('toggle')
    })
    // do something...
  })
})