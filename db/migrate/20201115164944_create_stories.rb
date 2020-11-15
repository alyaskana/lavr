class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.string :city
      t.integer :age
      t.text :content
      t.boolean :allow_public_read
      t.boolean :is_public

      t.timestamps
    end
  end
end
