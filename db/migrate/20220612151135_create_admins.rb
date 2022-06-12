class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :full_name
      t.string :username
      t.string :email
      t.string :contact_one
      t.string :contact_two
      t.string :street
      t.string :city
      t.string :region
      t.string :password_digest

      t.timestamps
    end
  end
end
