import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tasklist"
export default class extends Controller {
  connect() {
    console.log("connected :-)")
  }

  done() {
    console.log(event.currentTarget.closest("form").submit())
  }
}
