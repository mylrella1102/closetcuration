class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :item_id, null:false
      t.integer :weather_id
      t.integer :temp_low_id
      t.integer :temp_high_id
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
