import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log('navbar controller connected!');
  }

  updateNavbar() {
    if(window.scrollY >= window.innerHeight) {
      this.element.classList.add('navbar-white')
      this.element.classList.remove('navbar-transparent')
    } else {
      this.element.classList.remove('navbar-white')
      this.element.classList.add('navbar-transparent')
    }
  }
}
