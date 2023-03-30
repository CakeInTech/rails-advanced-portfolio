class Skill < ApplicationRecord
  validates :title, presence: true
  validates :percent_utilized, presence: true 
end
