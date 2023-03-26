class Feature < ApplicationRecord
  has_many :resources

  validates :flag, presence: true
end
