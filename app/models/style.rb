class Style < ApplicationRecord
  has_many :beers, primary_key: "original_id", foreign_key: "style_original_id"
  validates :original_id, presence: true
end
