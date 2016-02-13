class RemovePriceFromSubmissions < ActiveRecord::Migration
  def change
    remove_column :submissions, :price, :integer
  end
end
