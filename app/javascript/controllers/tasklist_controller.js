import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tasklist"
export default class extends Controller {
  static targets = ["taskId"]

  connect() {
    console.log("connected :-)")
  }

  done() {
    event.currentTarget.closest("form").submit()
  }

  positionUpdate() {
    console.log("hello, you drag'n droped!")
    console.log(this.taskIdTargets.map( div => div.innerText ))
  }
}
