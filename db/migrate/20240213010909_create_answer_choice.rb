class CreateAnswerChoice < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_choices do |t|
      t.references :question, null:false, foreign_key:true
      t.references :respondent, foreign_key: {to_table: :users}
      t.string :text
      t.timestamps
    end
  end
end
