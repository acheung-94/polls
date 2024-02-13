# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  respondent_id    :bigint           not null
#  answer_choice_id :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Response < ApplicationRecord

    belongs_to :respondent,
        foreign_key: :respondent_id,
        primary_key: :id,
        class_name: :User

    belongs_to :answer_choice,
        foreign_key: :answer_choice_id,
        primary_key: :id,
        class_name: :AnswerChoice
end
