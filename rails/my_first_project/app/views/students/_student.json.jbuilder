json.extract! student, :id, :name, :gender, :address, :semester, :active, :date_of_birth, :created_at, :updated_at
json.url student_url(student, format: :json)
