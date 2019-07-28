const places = require('places.js');


const placesAutocomplete = (...container) => {
 container = container.filter((el) => { return el !== null })
  places({
    appId: 'plI83Y8K8DEA',
    apiKey: 'c60071c9160b3a384c4a22b9c6d50090',
    container: container[0]
  });  
} 


export { placesAutocomplete }

