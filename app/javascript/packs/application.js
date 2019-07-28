import 'bootstrap';
import { showImagePreview }  from "./images-preview.js"
import { triggerAlerts }  from "../components/alerts"
import { placesAutocomplete }  from "../components/places_autocomplete"

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
console.log(coverImagePrewiew)
const dPreview = showImagePreview
logoInput && logoInput.addEventListener("change", (e) =>{ dPreview(e,"logo-prewiew" )})
coverImagePrewiew && coverImagePrewiew.addEventListener("change", (e) =>{ dPreview(e,"cover-image-prewiew" )})

