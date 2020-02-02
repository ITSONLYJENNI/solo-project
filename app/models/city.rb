class City < ApplicationRecord
  belongs_to :user
  
  validates :name, presence: true
  # validates :name, length: {maximum: 20}
end
