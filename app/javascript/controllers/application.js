import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

//  disable send button if message content is empty
document.addEventListener("DOMContentLoaded", function() {
  const contentInput = document.getElementById("message-content");
  const sendButton = document.getElementById("send-button");

  contentInput.addEventListener("input", function() {
    if (contentInput.value.trim() === "") {
      sendButton.disabled = true;
    } else {
      sendButton.disabled = false;
    }
  });
});
