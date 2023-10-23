import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['evaluationInput', 'evaluationButton'];
  static values = { editing: Boolean };

  connect() {
    this.setEvaluationButtonVisibility();
  }

  editingValueChanged() {
    this.setEvaluationButtonVisibility();
  }

  setEvaluationButtonVisibility() {
    if (this.editingValue) {
      this.evaluationButtonTarget.classList.remove('is-hidden');
    } else {
      this.evaluationButtonTarget.classList.add('is-hidden');
    }
  }

  increaseEvaluation() {
    this.evaluationInputTarget.value = parseInt(this.evaluationInputTarget.value) + 1;
    this.editingValue = true;
  }

  decreaseEvaluation() {
    this.evaluationInputTarget.value = parseInt(this.evaluationInputTarget.value) - 1;
    this.editingValue = true;
  }
}
