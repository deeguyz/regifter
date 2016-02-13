class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :link
      t.string :description
      t.integer :price
      t.attachment :avatar
      t.timestamps null: false
    end
  end
end
