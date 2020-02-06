class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :status

      t.timestamps
    end
  end
end
