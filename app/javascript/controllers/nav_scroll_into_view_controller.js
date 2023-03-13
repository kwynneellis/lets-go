import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav-scroll-into-view"

export default class extends Controller {
  static targets = ["button", "filter", "filterLinks"];
  static values = {
    category: String,
  }

  connect() {
    if (this.categoryValue) {
      Object.values(this.filterLinksTarget.children).forEach(linkItem => {
        if (linkItem.innerText.includes(this.categoryValue)) {
          linkItem.setAttribute("class", "btn btn-ghost active")
          linkItem.scrollIntoViewIfNeeded()({ behavior: "smooth", inline: "center" })
        }
      })
    }
  }
}
