class Beer < ApplicationRecord
  paginates_per 12
  belongs_to :style, primary_key: "original_id", foreign_key: "style_original_id"
  validates :original_id, presence: true

  def short_name
    parts = name.split(" ")
    parts.size < 3 ? name : parts.last(2).join(" ")
  end
end
