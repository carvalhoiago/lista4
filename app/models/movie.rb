class Movie < ApplicationRecord
  validates :name, presence: true
  belongs_to :director
end
