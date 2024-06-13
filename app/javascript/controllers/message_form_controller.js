import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "button"]

  connect() {
    console.log("Message form controller connected");
    this.toggleButton(); // Initial check
  }

  toggleButton() {
    const content = this.inputTarget.value.trim();
    if (content === "") {
      this.buttonTarget.setAttribute("disabled", true);
    } else {
      this.buttonTarget.removeAttribute("disabled");
    }
  }

  resetForm() {
    this.inputTarget.value = "";
    this.toggleButton();
  }
}
