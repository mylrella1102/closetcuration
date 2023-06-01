class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :category_id,           null: false
      t.integer :color_id
      t.integer :season_id
      t.text :info
      t.timestamps
    end
  end
end
