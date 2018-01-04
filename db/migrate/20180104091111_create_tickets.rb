class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact_number
      t.string :email
      t.string :gender
      t.string :company
      t.string :job_title
      t.string :street_address
      t.string :city
      t.string :state_province
      t.string :country
      t.integer :number_of_employees
      t.string :industry
      t.string :referral
      t.integer :track

      t.timestamps
    end
  end
end
