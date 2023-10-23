class AddEvaluationToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :evaluation, :integer, null: false, default: 0
  end
end
