class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :eventAnnouncement
      t.timestamps
    end
  end
end
