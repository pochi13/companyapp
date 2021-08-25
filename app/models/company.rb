class Company < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :introduce
   end
end
