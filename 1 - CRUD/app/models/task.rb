class Task < ApplicationRecord
  STATUSES = %w[pending in_progress done].freeze

  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }
end