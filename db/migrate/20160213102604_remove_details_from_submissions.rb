class RemoveDetailsFromSubmissions < ActiveRecord::Migration
  def change
    remove_column :submissions, :link, :string
    remove_column :submissions, :price, :decimal
  end
end
