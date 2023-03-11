import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav-scroll-into-view"
export default class extends Controller {
  static targets = ["btn"]

  connect() {
    console.log("Hello from nav scroll into view Stimulus controller")
  }

  scrollIntoView() {
    this.elementTarget.scrollIntoView({ behavior: "smooth" })
  }
}


// // Gave up with data controller data target and tried diff approach - neither working:

// let nav = document.querySelectorAll('nav')

// if (nav) {
//   let navLinks = document.querySelectorAll('nav a')
//   let activeLink = document.querySelector('.active')
//   activeLink.scrollIntoView({ behavior: "smooth", inline: "center" })

//   navLinks.forEach( function(link) {
//     link.addEventListener("click", (event) => {
//       navLinks.forEach( function(link) {
//         link.classList.remove('active')
//       })
//       link.classList.add('active')
//       link.scrollIntoView({ behavior: "smooth", inline: "center" })
//     })
//   })
// }
