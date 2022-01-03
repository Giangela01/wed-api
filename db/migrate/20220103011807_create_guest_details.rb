class CreateGuestDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_details do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.boolean :plusOne

      t.timestamps
    end
  end
end
