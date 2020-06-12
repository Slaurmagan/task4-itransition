import { Controller } from "stimulus"

const requestify = require('requestify');

export default class extends Controller {
  static targets = [ "checkbox","userid","userRecord" ]
  
  connect() {
    
  }
  check_all() {
  	this.checkboxTargets.forEach(target => target.checked = !target.checked)
  }

  check() {
  	console.log(this.userRecordTarget)
  }
}
