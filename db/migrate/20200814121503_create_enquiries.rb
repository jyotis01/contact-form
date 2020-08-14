class CreateEnquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :enquiries do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.text :phone_number
      t.text :message

      t.timestamps
    end
  end
end