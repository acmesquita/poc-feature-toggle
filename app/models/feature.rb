class Feature < ApplicationRecord
  has_many :feature_resources, dependent: :destroy

  validates :flag, presence: true
end
