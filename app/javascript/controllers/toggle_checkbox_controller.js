import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkboxes", "selection"]
  connect() {

  }
  toggle(event) {
    // Get selection(individual checkbox) targets from DOM
    const emergency = this.selectionTargets[0]
    const nonEmergency = this.selectionTargets[1]
    // Find our value of selected element

    // If value matches string AND box is ticked (not unticked)
    if (event.currentTarget.value === "Emergency" && emergency.checked === true) {
      // Other box is unticked
      nonEmergency.checked = false;
    }

    if (event.currentTarget.value === "Non-Emergency" && nonEmergency.checked === true) {
      emergency.checked = false;
    }
  }
}
