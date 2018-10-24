class AddActiveBooleanToCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :active, :boolean, default: true
  end
end
