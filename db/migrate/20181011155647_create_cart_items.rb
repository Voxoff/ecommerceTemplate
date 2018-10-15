class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.references :cart, foreign_key: true
      t.integer :quantity
      t.references :product, foreign_key: true
      t.integer :flavor

      t.timestamps
    end
  end
end
