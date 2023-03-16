import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="stars"
export default class extends Controller {
  static targets = ['twinkles']
  connect() {
    console.log('shit on the floor')
    // console.log(this.element)
    // console.dir(this.element.firstElementChild)
    // c
    console.log(this.twinklesTargets)
  }

  changeRating(e) {
    console.log(e)
    console.log(e.target)
    this.twinklesTargets.forEach((twinkle) => {
      if (twinkle.value <= e.target.value) {
        twinkle.classList.add("twinkle")
        twinkle.classList.remove("no-twinkle")
      } else {
        twinkle.classList.remove('twinkle')
        twinkle.classList.add("no-twinkle")
      }
    })
  }
}
