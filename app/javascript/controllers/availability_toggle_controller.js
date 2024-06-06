import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="availability-toggle"
export default class extends Controller {
  connect() {
    console.log("Hello")
    console.log(this.element)
  }



}
