# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  question_id :integer
#  answer_id   :integer
#
class Response < ApplicationRecord
  validate :not_duplicate_response

  def not_duplicate_response
    if 




  end

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :author_id

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_id

  belongs_to :question,
    through: :answer_choice,
    source: :question
end
