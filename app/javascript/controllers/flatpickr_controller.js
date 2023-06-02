import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]

  connect() {
    console.log("connected")
    new flatpickr(this.element, {
      minDate: "today",
      // inline: false,
      mode: "range",
      dateFormat: "d-m-Y",
    });
  }
}
