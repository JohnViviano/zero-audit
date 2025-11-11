json.extract! audit, :id, :title, :owner, :status, :due_on, :details, :created_at, :updated_at
json.url audit_url(audit, format: :json)
