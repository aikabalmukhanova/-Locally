import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="availability-toggle"
export default class extends Controller {
  static targets = ["toggle"]

  connect() {
    console.log("Hello");
  }

  available(event) {
    this.element.submit(event)
  }
}
