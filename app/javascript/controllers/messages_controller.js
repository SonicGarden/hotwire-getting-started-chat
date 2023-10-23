import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['broadcastMessage'];

  connect() {
    this.element.scrollTop = this.element.scrollHeight;
  }

  broadcastMessageTargetConnected(element) {
    element.scrollIntoView();
  }
}
