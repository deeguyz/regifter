class AddPriceToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :price, :integer
  end
end
