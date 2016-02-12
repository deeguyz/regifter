class CreateItemDisplays < ActiveRecord::Migration
  def change
    create_table :item_displays do |t|
      t.string :description
      t.decimal :price
      t.timestamps null: false
    end
  end
end
