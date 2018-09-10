class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :product_sku
      t.monetize :amount
      t.string :payment
      t.string :jsonb
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
