# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  yr          :integer          not null
#  score       :float            not null
#  votes       :integer          not null
#  director_id :integer          not null
#

class Movie < ApplicationRecord
  has_one :director,
    class_name: :Actor,
    foreign_key: :id,
    primary_key: :director_id

  # has_one :director,
  #   class_name: :Movie,
  #   foreign_key:  :id,
  #   primary_key: :dir


  has_many :castings,
    class_name: :Casting,
    foreign_key: :movie_id,
    primary_key: :id

  has_many :actors,
    through: :castings,
    source: :actor
end
