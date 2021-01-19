class RemoveSauceIdFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :sauce_id
  end
end
