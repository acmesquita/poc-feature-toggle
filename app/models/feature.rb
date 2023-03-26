class Feature < ApplicationRecord
  has_many :feature_resources

  validates :flag, presence: true
end
