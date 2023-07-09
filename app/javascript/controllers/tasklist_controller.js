import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tasklist"
export default class extends Controller {
  static targets = ["taskId", "ids"]

  connect() {
    console.log("connected :-)")
  }

  done() {
    event.currentTarget.closest("form").submit()
  }

  positionUpdate() {
    console.log("hello, you drag'n droped!")
    const ids = this.taskIdTargets.map( div => div.innerText )
    console.log(ids)
    this.idsTarget.value = ids
    this.idsTarget.closest("form").submit()
  }
}
