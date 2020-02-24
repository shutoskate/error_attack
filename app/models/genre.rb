class Genre < ApplicationRecord
  has_many :problems
  belongs_to :user
  
  validates :language, presence: true
end
