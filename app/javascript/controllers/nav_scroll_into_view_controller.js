import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav-scroll-into-view"

export default class extends Controller {
  static targets = ["btn"];

  connect() {
    console.log("Hello from nav scroll into view Stimulus controller")
  }

  scrollIntoView() {
    this.btnTarget.addEventListener("click", this.handleClick);
  }

  handleClick(event) {
    this.btnTarget.scrollIntoView({ behavior: "smooth", inline: "center" })
  }
}
