class Resource < ApplicationRecord
  has_many :feature_resources

  validates :uid, presence: true
end
