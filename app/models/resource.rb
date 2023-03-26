class Resource < ApplicationRecord
  has_many :features

  validates :uid, presence: true

end
