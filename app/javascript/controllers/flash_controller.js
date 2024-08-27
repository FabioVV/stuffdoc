import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
    connect() {
      this.timeout = setTimeout(() => {
        this.dismiss()
      }, 4000) 
    }
  
    disconnect() {
      clearTimeout(this.timeout)
    }
  
    dismiss() {
      this.element.remove()
    }
  }