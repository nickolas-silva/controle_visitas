class Unity < ApplicationRecord
  belongs_to :secretary
  has_many :employees
  has_many :attendants
end
