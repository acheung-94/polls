# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  poll_id    :bigint           not null
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord
    belongs_to :poll,
        foreign_key: :poll_id,
        primary_key: :id,
        class_name: :Poll

    has_many :answer_choices,
        foreign_key: :question_id,
        primary_key: :id,
        class_name: :AnswerChoice,
        dependent: :destroy
end
