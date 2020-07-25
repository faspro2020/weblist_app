class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :name, null: false
      t.text :url, null: false
      t.text :comment
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end