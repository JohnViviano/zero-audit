class Finding < ApplicationRecord
  belongs_to :audit
  enum severity: { low: 0, medium: 1, high: 2, critical: 3 }
  enum status: { open: 0, remediating: 1, closed: 2 }
  validates :title, :severity, :status, presence: true

end
