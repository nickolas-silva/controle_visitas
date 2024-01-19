class Secretary < ApplicationRecord
  has_many :unities, dependent: :destroy
end
