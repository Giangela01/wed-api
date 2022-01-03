class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :story
      t.string :thingsToDo
      t.string :location

      t.timestamps
    end
  end
end
