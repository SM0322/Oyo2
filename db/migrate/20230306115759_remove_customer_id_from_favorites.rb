class RemoveCustomerIdFromFavorites < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :customer_id, :integer
  end
end
