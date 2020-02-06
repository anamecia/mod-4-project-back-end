class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :reading_id
      t.integer :book_id
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
