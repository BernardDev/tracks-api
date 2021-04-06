class Orders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :address
      t.string :item
      t.integer :price
      t.integer :total
    end
  end
end
