class MedicalProcedure < ApplicationRecord
  scope :title_starts_with, -> (title) { where("title ILIKE ?", "#{title}%") }
  scope :title_contains, -> (title) { where("title ILIKE ?", "%#{title}%") }
end
