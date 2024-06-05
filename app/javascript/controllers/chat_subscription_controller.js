import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"


// Connects to data-controller="chat-subscription"
export default class extends Controller {
  static targets = ["messages"]
  static values = { id: Number}

  connect() {
    this.subscription = createConsumer().subscriptions.create(
      { channel: "ChatChannel", id: this.idValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
  )
  }

  resetForm(event) {
    event.target.reset()
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
