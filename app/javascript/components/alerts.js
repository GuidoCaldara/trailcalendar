import Swal from 'sweetalert2'

const triggerAlerts = (alertBox) =>{
  Swal.fire({
    type: alertBox.dataset.type,
    text: alertBox.dataset.message,
  })
}


export { triggerAlerts }