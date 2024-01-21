class Visitor < ApplicationRecord
  has_many :visits
  mount_uploader :photo, FotoUploader

end
