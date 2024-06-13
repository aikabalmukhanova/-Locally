import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="availability-toggle"
export default class extends Controller {
  static targets = ["label"];

  connect() {
    console.log("Hello");
  }

  available(event) {
    console.log("Available");
    this.element.submit(event)
  }

  toggleLabel(event) {
    console.log(this.labelTarget.innerText);
    console.log(event);
    console.log(event.target.checked);
    const checkbox = event.target;
  //   const label = this.element.label

    if (checkbox.checked === true ) {
      this.labelTarget.innerText = "online";
      this.labelTarget.classList.remove("form-check-label");
      this.labelTarget.classList.remove("form-check-label-unavailable");
      this.labelTarget.classList.add("form-check-label-available");
    } else {
      this.labelTarget.innerText = "offline";
      this.labelTarget.classList.remove("form-check-label")
      this.labelTarget.classList.remove("form-check-label-available");
      this.labelTarget.classList.add("form-check-label-unavailable");
    }
  }
}
