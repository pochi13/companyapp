class Application < ApplicationRecord
  belongs_to :user
  belongs_to :company
  validates :reason,presence: true 
  
end
