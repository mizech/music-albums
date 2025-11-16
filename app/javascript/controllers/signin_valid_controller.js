import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signin-valid"
export default class extends Controller {
  connect() {}

  validateData(event) {
    let target = event.target
    let targetID = target.id
    let actualLength = target.value.length
    let expectedLength = targetID === "user_email" ? 5 : 8
   
    if (actualLength < expectedLength) {
      target.classList.add("invalid")
    } else {
      target.classList.remove("invalid")
    }
  }
}
