json.extract! ticket, :id, :first_name, :last_name, :contact_number, :email, :gender, :company, :job_title, :street_address, :city, :state_province, :country, :number_of_employees, :industry, :referral, :track, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
