class Note < ApplicationRecord
  scope :by_keyword, ->(keyword) { where("title ILIKE ? OR content ILIKE ?", "%#{keyword}%", "%#{keyword}%") }
end
