class Audit < ApplicationRecord
  has_many :findings, dependent: :destroy
  enum status: { open: 0, in_progress: 1, closed: 2 }
  validates :title, :status, presence: true
end
