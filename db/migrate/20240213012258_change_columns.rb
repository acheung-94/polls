class ChangeColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :answer_choices, :respondent_id
    remove_index :users, :username
    add_index :users, :username, unique:true
  end
end
