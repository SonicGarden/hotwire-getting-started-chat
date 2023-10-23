import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['evaluationInput'];

  increaseEvaluation() {
    this.evaluationInputTarget.value = parseInt(this.evaluationInputTarget.value) + 1;
  }

  decreaseEvaluation() {
    this.evaluationInputTarget.value = parseInt(this.evaluationInputTarget.value) - 1;
  }
}
