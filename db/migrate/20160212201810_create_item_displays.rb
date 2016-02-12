class CreateItemDisplays < ActiveRecord::Migration
  def change
    create_table :item_displays do |t|

      t.timestamps null: false
    end
  end
end
