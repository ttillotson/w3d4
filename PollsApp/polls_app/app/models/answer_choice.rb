# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  choice      :integer
#  text        :string
#  question_id :integer
#

class AnswerChoice < ApplicationRecord
  has_many :responses,
    class_name: :Response,
    primary_key: :id,
    foreign_key: :answer_id

  belongs_to :question,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :question_id


end
