class Application < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :comments
  validates :reason,presence: true 
  
end
