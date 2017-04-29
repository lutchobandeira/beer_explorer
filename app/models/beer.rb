class Beer < ApplicationRecord
  belongs_to :style, primary_key: "original_id", foreign_key: "style_original_id"
  validates :original_id, presence: true
end
