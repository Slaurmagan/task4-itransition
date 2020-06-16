import { Controller } from "stimulus"

const requestify = require('requestify');

export default class extends Controller {
  static targets = [ "checkbox","userid","userRecord","block","delete" ]
  
  connect() {
    
  }
  check_all() {
  	this.checkboxTargets.forEach(target => target.checked = !target.checked)
  }

  check() {
  	console.log(this.userRecordTarget)
  }
  delete(event){
  	event.preventDefault()
  	this.deleteTarget.click()

  }
  block(event) {
  	event.preventDefault()
  	this.blockTarget.click()
  }
}
