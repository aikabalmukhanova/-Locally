import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="availability-toggle"
export default class extends Controller {
  static targets = ["toggle"]
  // static targets = ["label"];

  connect() {
    console.log("Hello");
  }

  available(event) {
    console.log("Available");
    this.element.submit(event)
  }

//   toggleLabel(event) {
//     const checkbox = event.target;
//     const label = this.labelTarget;

//     if (checkbox.checked === true ) {
//       label.textContent = "available";
//     } else {
//       label.textContent = "unavailable";
//     }
//   }
}
