class CreateFormes < ActiveRecord::Migration[5.2]
  def change
    create_table :formes do |t|
      t.string :title
      t.string :category
      t.decimal :price
      t.decimal :year
      t.string :attachment

      t.timestamps
    end
  end
end
