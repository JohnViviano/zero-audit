json.extract! finding, :id, :audit_id, :title, :severity, :description, :remediation, :due_on, :status, :created_at, :updated_at
json.url finding_url(finding, format: :json)
