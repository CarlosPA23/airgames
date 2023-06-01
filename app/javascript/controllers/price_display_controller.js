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

  // initFlatpicker() {
  //   flatpickr(this.startDateTarget, {
  //     minDate: "today",
  //     dateFormat: "Y-m-d",
  //   });

  //   flatpickr(this.endDateTarget, {
  //     minDate: "this.startDateTarget.value",
  //     dateFormat: "Y-m-d",
  //   });
  // }

  initFlatpicker() {
    let endDatePicker;

    flatpickr(this.startDateTarget, {
      minDate: "today",
      dateFormat: "Y-m-d",
      onChange: (selectedDates, dateStr, instance) => {
        if (selectedDates.length > 0) {
          let date = new Date(selectedDates[0]);
          date.setDate(date.getDate() + 1);
          if (endDatePicker) {
            endDatePicker.set('minDate', date);
          }
        }
      },
    });

    endDatePicker = flatpickr(this.endDateTarget, {
      minDate: new Date().fp_incr(1), // initially set minDate to tomorrow
      dateFormat: "Y-m-d",
    });
  }



}
