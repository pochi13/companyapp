class Company < ApplicationRecord
  has_one_attached :image
  
  with_options presence: true do
    validates :name
    validates :introduce
   end
end
