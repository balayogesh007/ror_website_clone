class CreateClientdetails < ActiveRecord::Migration[7.0]
  def change
    create_table :clientdetails do |t|
      t.string :contact_name
      t.string :email_id
      t.string :company_name
      t.string :phonenumber
      t.string :message
      t.timestamps
    end
  end
end
