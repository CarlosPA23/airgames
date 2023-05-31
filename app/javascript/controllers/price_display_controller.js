import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="price-display"
export default class extends Controller {
  static targets = ["startDate", "endDate", "price"]
  static values = {
    price: Number
  }
  connect() {
    console.log("Testing")
    this.initFlatpicker()
    console.log(this.priceValue);
  }

  calculate(event) {
    console.log( typeof (Date.parse(this.endDateTarget.value) - Date.parse(this.startDateTarget.value)));
    console.log( Math.floor((Date.parse(this.endDateTarget.value) - Date.parse(this.startDateTarget.value)) / 86400000));
    const days = Math.floor((Date.parse(this.endDateTarget.value) - Date.parse(this.startDateTarget.value)) / 86400000)
    const totalPrice = days * this.priceValue
    this.priceTarget.innerText = totalPrice
  }

  initFlatpicker() {
    flatpickr(this.startDateTarget, {
      minDate: "today",
      dateFormat: "Y-m-d",
    });

    flatpickr(this.endDateTarget, {
      minDate: this.startDateTarget.value,
      dateFormat: "Y-m-d",
    });
  }
}
