// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "checkbox","userid","userRecord" ]

  connect() {
    
  }
  check_all() {
  	this.checkboxTargets.forEach(target => target.checked = !target.checked)
  }
  block(e) {
  	e.preventDefault()
  }
  delete(e){
  	e.preventDefault()
  }
  check() {
  	console.log(this.userRecordTarget)
  }
}
