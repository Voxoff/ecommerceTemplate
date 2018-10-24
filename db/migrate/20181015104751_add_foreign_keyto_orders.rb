class AddForeignKeytoOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :cart, foreign_key: true
  end
end
