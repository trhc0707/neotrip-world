class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :phone_number
      t.date :date_of_birth
      t.string :live
      t.string :state
      t.string :profile_photo_img
      t.text :profile_content

      t.timestamps
    end
  end
end
