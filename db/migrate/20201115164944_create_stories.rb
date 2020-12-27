class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.string :city
      t.integer :age
      t.text :content, null: false
      t.boolean :allow_public_read, default: true
      t.boolean :is_public, default: false

      t.timestamps
    end
  end
end
