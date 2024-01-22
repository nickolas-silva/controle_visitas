class Visit < ApplicationRecord
  belongs_to :visitor
  belongs_to :employee

  attribute :status, :boolean, default: false
end
