json.extract! category, :id, :name, :email, :body_mail, :body_mail_end, :created_at, :updated_at
json.url category_url(category, format: :json)
