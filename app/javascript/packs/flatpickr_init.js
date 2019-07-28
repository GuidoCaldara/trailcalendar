const flatpickr = require("flatpickr");
import { Italian } from "flatpickr/dist/l10n/it.js"

flatpickr(`.date-simple`, {
  dateFormat: "d-m-Y",
  "locale": Italian,
   minDate: "today"
});

flatpickr(`.date-range`, { 
  mode: "range",
  dateFormat: "d-m-Y",
  "locale": Italian,
  minDate: "today",
});
flatpickr(`.date-hour`, {
  enableTime: true,
  noCalendar: true,
  dateFormat: "H:i",
  time_24hr: true,
  "locale": Italian
}
)